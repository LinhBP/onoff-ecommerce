from dotenv import load_dotenv
import stripe
import os
load_dotenv()


STRIPE_API_KEY = os.getenv('STRIPE_API_KEY')


class StripeAPI():
    def __init__(self):
        self.stripe = stripe
        self.stripe.api_key = STRIPE_API_KEY

    def upload_product(self, name, image_url, price, description="This is a product description."):
        product = self.stripe.Product.create(
            active=True,
            name=name,
            description=description,
            images=[image_url],
            default_price_data={
                "unit_amount_decimal": price*100, "currency": "usd"},
        )
        return product
