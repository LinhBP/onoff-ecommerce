import { useEffect } from 'react'
import classes from './products-description.module.css'
import Aos from 'aos'
import "aos/dist/aos.css"
import Link from 'next/link'

const ProductsDescription = () => {
    useEffect(() => {
        Aos.init({ duration: 1000 });
    }, [])

    return (
        <div data-aos="fade-up" className={classes.body__container}>
            <h1 className={classes.body__title}>All Sneakers</h1>
            <p className={classes.body__content}>At <Link href="/"><a className={classes.onoff} >The ONOFF Shop</a></Link> you can find a wide selection of sneakers: a product originally created for sports, sneakers have become a must in everyday life. Within our selection there is a wide range of sneakers suitable for any occasion: low, high, retro, ogs, skate, basketball, tennis, running, trail and lifestyle. Our wide range of brands ranges from more contemporary choices to vintage collections, special and unique collaborations and releases</p>
        </div>
    )
}

export default ProductsDescription