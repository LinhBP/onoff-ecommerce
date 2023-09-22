from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy import create_engine, Column, String, Integer, Numeric, ForeignKey
import os
from dotenv import load_dotenv
import json
from sqlalchemy.orm import relationship
from stripe_api import StripeAPI
import shutil
load_dotenv()

DATABASE_URL = os.getenv('DATABASE_URL')
# Set your secret key. Remember to switch to your live secret key in production.
# See your keys here: https://dashboard.stripe.com/apikeys

Base = declarative_base()


class Bill(Base):
    __tablename__ = 'bill'

    billid = Column(Integer, primary_key=True, autoincrement=True)
    customerid = Column(Integer, ForeignKey('customer.customerid'))

    customer = relationship("Customer", back_populates="bills")
    billdetail = relationship("BillDetail", back_populates="bill")


class BillDetail(Base):
    __tablename__ = 'billdetail'

    billdetailid = Column(Integer, primary_key=True, autoincrement=True)
    billid = Column(Integer, ForeignKey('bill.billid'))
    shoesid = Column(Integer, ForeignKey('shoes.shoesid'))
    quantity = Column(Integer)

    bill = relationship("Bill", back_populates="billdetail")
    shoes = relationship("Shoes", back_populates="billdetail")


class Customer(Base):
    __tablename__ = 'customer'

    customerid = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String(40))
    age = Column(Integer)
    gender = Column(String(10))
    tel = Column(String(15))
    email = Column(String(40))

    bills = relationship("Bill", back_populates="customer")


class Shoes(Base):
    __tablename__ = 'shoes'

    shoesid = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String(40))
    brand = Column(String(20))
    size = Column(String(10))
    color = Column(String(40))
    type = Column(String(10))
    gender = Column(String(10))
    image = Column(String(100))
    stripeid = Column(String)
    detail = Column(String(100))
    price = Column(Numeric(10, 2))

    billdetail = relationship("BillDetail", back_populates="shoes")
    related_image_shoes = relationship(
        "RelatedImageShoes", back_populates="shoes")


class RelatedImageShoes(Base):
    __tablename__ = 'related_image_shoes'

    related_image_shoesid = Column(
        Integer, primary_key=True, autoincrement=True)
    shoesid = Column(Integer, ForeignKey('shoes.shoesid'))
    image = Column(String(100))

    shoes = relationship("Shoes", back_populates="related_image_shoes")


class PostgresSqlDB():
    def __init__(self):
        self.engine = create_engine(DATABASE_URL)
        self.Session = sessionmaker(bind=self.engine)
        self.session = self.Session()
        self.stripe = StripeAPI()

    def insert_data_to_db(self, data):
        for item in data:
            existing_shoes = self.session.query(Shoes).filter(
                Shoes.name == item['name']).first()

            if existing_shoes:
                # Update the existing record with other attributes
                for key, value in item.items():
                    if key == "size":
                        # Convert size to comma-separated string
                        value = ", ".join(value)
                        print('value', value)
                    if key == "price":
                        # Convert price to floating-point number
                        value = float(value/24000)
                    setattr(existing_shoes, key, value)

            else:
                # Create a new record with all attributes
                imgs_related = item['imgs_related']
                del item['imgs_related']

                new_shoe = Shoes(**item)
                shoes_sizes = item['size']
                new_shoe = ", ".join(shoes_sizes)

                # Handle related images
                for img_url in imgs_related:
                    print('img_url', img_url)
                    related_img = RelatedImageShoes(
                        image=img_url, shoes=new_shoe)
                    new_shoe.related_image_shoes.append(related_img)
                name = new_shoe.name
                image_of_shoe = new_shoe.image
                price = new_shoe.price
                description = new_shoe.detail
                product = self.stripe.upload_product(
                    name, image_of_shoe, price, description)
                stripeid = product.default_price
                new_shoe.stripeid = stripeid
                self.session.add(new_shoe)

        self.session.commit()

    def insert_from_json_file(self, file):
        with open(file, 'r', encoding='utf-8') as f:
            data = json.load(f)
        self.insert_data_to_db(data)

    def sync_data(self):
        shoes = self.session.query(Shoes).all()

        for shoe in shoes:
            image_of_shoe = shoe.image
            price = shoe.price
            name = shoe.name
            description = shoe.detail
            included_images = image_of_shoe.find('/images/')
            if included_images == 0:
                link_stored = f'C:/Users/20184040/code/jf_bpl/onoff-ecommerce-project/public{image_of_shoe}.jpg'
                file_name = link_stored.split('/')[-1]
                dst_file = f'./images/{file_name}'
                # shutil.copyfile(link_stored, dst_file)
                try:
                    image_url = f'https://minio.hisoft.com.vn/anhtn/stripe/{file_name}'
                    product = self.stripe.upload_product(
                        name, image_url, price, description)
                    stripeid = product.default_price
                    shoe.stripeid = stripeid
                    self.session.add(shoe)
                    print(f"Product created with ID: {product.id}")
                except self.stripe.stripe.error.StripeError as e:
                    # Handle errors
                    print(f"Error: {e}")
            else:
                try:
                    image_url = shoe.image
                    product = self.stripe.upload_product(
                        name, image_url, price, description)
                    stripeid = product.default_price
                    shoe.stripeid = stripeid
                    self.session.add(shoe)
                    print(f"Product created with ID: {product.id}")
                except self.stripe.stripe.error.StripeError as e:
                    # Handle errors
                    print(f"Error: {e}")
        self.session.commit()


if __name__ == "__main__":
    db = PostgresSqlDB()
    db.sync_data()
    # db.remove_all_products()
