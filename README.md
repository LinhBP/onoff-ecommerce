# onoff - a Fullstack Ecommerce Website helps you shop your shoes at ease using NextJS framework

## Tables of Contents

- [Project Overview](#project-overview)
- [Website Features](#website-features)
- [Getting Started](#getting-started)
- [Learn More](#learn-more)
- [Contributing](#contributing)
- [Contacts](#contacts)

## Project Overview <a name="project-overview"></a>

Data plays a pivotal role in today's projects. In this project, I directly utilize data sourced from renowned brands such as Adidas, Nike, and more. Instead of relying on pre-existing datasets painstakingly crafted by hand, crawling data offers us a more comprehensive and authentic perspective.
You can see live demo at: [onoff-ecommerce.aiotlab-annotation.com](https://onoff-ecommerce.aiotlab-annotation.com/)

### Key Highlights

- **Data Crawling**: I employ data crawling techniques using Selenium to automatically extract data from webpages of prominent brands like Nike and Adidas.

- **Frontend with Next.js**: The frontend is built using Next.js, providing a seamless and responsive user experience.

- **Data Visualization**: I empower users with diverse data visualization features, allowing for a comprehensive understanding of the data.

- **Simulated Payments with Stripe**: I simulate the payment process using Stripe, ensuring a smooth and secure transaction experience.

Discover the power of real data and explore the world of renowned brands like never before with our project. Dive into the details, visualize the insights, and experience the convenience of simulated payments. Welcome to a new era of data-driven projects!

### Website's techonology features

- NextJs
- Selenium
- Pages & File-based Routing
- Dynamic Api Routes
- PostgreSQL cloud databases
- Object Relational Mapping - Prisma
- Docker

## Website Features <a name="website-features"></a>

### Latest features

- Auto crawl data from e-commerce page/brand like Nike-Aidas
- Fetch and show all products and brands
- Fetch and show detail of each product and each brand
- Add products to cart
- Send feedbacks and customers's information
- Show featured sneakers, sneakers carousel
- Validate form
- Payments method - Stripe 

### Features to be implemented in the near future

- Login Authentication
- Voice-enabled online shopping
- Integrating shoppable videos

## Getting Started <a name="getting-started"></a>

- Clone from Github

- If you want to run task crawl data, go to folder crawl_data and run script below:

```
python crawl_data.py
```

I use selenium - google driver so maybe have some trouble with chrome driver version, for suitable with you computer, check version in *https://googlechromelabs.github.io/chrome-for-testing/*

To run web-brower, go to folder onoff-ecommerce-project and do with the description below:

- Install node_modules

```
npm install
# or
yarn install
```

- Run the development server

```
npm run dev
# or
yarn run dev
```

Open [https://localhost:3000](https://localhost:3000) with your browser to see the result.  
_Note: If you have trouble with missing packages please install the dependencies in package.json file_

## Learn More <a name="learn-more"></a>

To learn more about Next.js, take a look at the following resources:

- [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
- [Learn Next.js](https://nextjs.org/learn) - an interactive Next.js tutorial.

You can check out [the Next.js GitHub repository](https://github.com/vercel/next.js/) - your feedback and contributions are welcome!
## Contributing  <a name="contributing"></a>
### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/LinhBP/onoff-ecommerce/issues) to report any bugs or file feature requests. I will try to be responsive to resolve all the issues.

### Developing

PRs are welcome. To begin developing, do this:

```bash
$ git clone git@github.com:Linh.BP/onoff-ecommerce.git
$ cd onoff-ecommerce/
$ go run *.go
```

## Contacts <a name="contacts"></a>

- Google Gmail: phoebe02032003@gmail.com
- Outlook: Linh.bp215077@sis.hust.edu.vn
