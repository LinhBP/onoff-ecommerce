import json
from selenium import webdriver
from selenium.webdriver.chrome.service import Service as ChromeService
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.chrome.options import Options as ChromeOptions
from postgre_sql_db import PostgresSqlDB
import time

# Configure Chrome options
chrome_options = ChromeOptions()
# Run Chrome in headless mode (no GUI)
chrome_options.add_argument("--headless")
chrome_options.add_argument("--disable-gpu")
chrome_options.add_argument("--no-sandbox")
chrome_options.add_argument("--lang=es")

# Set up the Chrome web driver
driver = webdriver.Chrome(service=ChromeService(
    "./chromedriver.exe"), options=chrome_options)


def crawl_data_nike_shoes():
    # URL of the web page you want to scrape
    url = 'https://www.nike.com/vn/w/mens-shoes-nik1zy7ok'

    # Open the web page
    driver.get(url)

    # Scroll down to load more content until no more items are loaded
    scroll_delay = 2  # Adjust this value based on your page's loading speed
    scroll_count = 0
    max_scroll_attempts = 10  # Maximum number of times to scroll
    loaded_items = set()

    # Scroll down to load more images (you may need to customize this based on the website)
    for _ in range(10):
        driver.find_element(By.TAG_NAME, 'body').send_keys(Keys.END)
        time.sleep(2)  # Wait for the page to load

    last_height = driver.execute_script("return document.body.scrollHeight")

    # Find all the image elements on the page
    product_elements = driver.find_elements(
        By.CLASS_NAME, 'product-card__body')

    print("Number of products:", len(product_elements))
    output = []
    for product_element in product_elements:
        product_img = product_element.find_element(
            By.TAG_NAME, 'img').get_attribute('src')
        print("product_img", product_img)
        product_name = product_element.find_element(
            By.CLASS_NAME, 'product-card__title').text
        print("product_name", product_name)
        product_price = product_element.find_element(
            By.CLASS_NAME, 'product-price').text
        print("product_price", product_price)
        product_link_detail = product_element.find_element(
            By.CLASS_NAME, 'product-card__link-overlay').get_attribute('href')
        print("product_link_detail", product_link_detail)
        driver_detail = webdriver.Chrome(service=ChromeService(
            "./chromedriver.exe"), options=chrome_options)
        driver_detail.get(product_link_detail)
        time.sleep(5)
        product_detail = driver_detail.find_element(
            By.CLASS_NAME, 'description-preview').text
        product_color = driver_detail.find_element(
            By.CLASS_NAME, 'description-preview__color-description').text
        product_size_elements = driver_detail.find_elements(
            By.CLASS_NAME, 'css-xf3ahq')
        product_sizes = [test.text for test in product_size_elements]
        imgs_elements = driver_detail.find_elements(By.TAG_NAME, 'img')
        imgs_related = []
        for img_element in imgs_elements:
            src_img_element = img_element.get_attribute('src')
            string_loading_img = 'LOADING'
            string_source_from_nike = 'https://static.nike.com'
            if string_source_from_nike not in src_img_element:
                continue
            if string_loading_img not in src_img_element:
                print("src_img_element", src_img_element)
                imgs_related.append(src_img_element)

        cleaned_string = product_price.replace(",", "").replace("₫", "")

        # Step 2: Convert to floating-point number
        number = float(cleaned_string)

        # Step 3: Format with two decimal places
        product_price = '{:.2f}'.format(number)

        print("product_detail", product_detail)
        print("product_color", product_color)
        print("product_sizes", product_sizes)

        each_product_data = {
            'image': product_img,
            'name': product_name,
            'price': float(product_price),
            'detail': product_detail,
            'color': product_color,
            'size': product_sizes,
            'imgs_related': imgs_related,
            'brand': 'Nike',
            'type': 'sneaker',
            'gender': "male",
        }
        output.append(each_product_data)

        driver_detail.quit()

    with open('data.json', 'w', encoding='utf-8') as f:
        json.dump(output, f, ensure_ascii=False, indent=4)

    # Close the web driver
    driver.quit()


if __name__ == "__main__":
    crawl_data_nike_shoes()
    postgresSqlDB = PostgresSqlDB()
    postgresSqlDB.insert_from_json_file('data.json')
