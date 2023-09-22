import '../styles/globals.css'
import Layout from '../components/layout/layout'
import NextNProgress from "nextjs-progressbar";
import { ShoppingCartContextProvider } from '../store/shopping-cart-context';

function MyApp({ Component, pageProps }) {
  return (
    <ShoppingCartContextProvider>
      <title>ONOFF - a Sneaker shop website</title>
      <Layout>
        <NextNProgress color="#808080" />
        <Component {...pageProps} />
      </Layout>
    </ShoppingCartContextProvider>
  )
}

export default MyApp
