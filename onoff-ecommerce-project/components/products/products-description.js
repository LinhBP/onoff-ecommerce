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
            <p className={classes.body__content}>At the <Link href="/"><a className={classes.onoff} >ONOFF</a></Link> shop, we believe that the best shoes for you are the ones that make no difference between when you wear them ON and when you take them OFF. Within our selection, there is a wide range of sneakers that match your styles: flat, pump, retro, chunky,.. and suitable for any occasion:  skate, basketball, football, running, gym and lifestyle. It’s our mission to help you show up at your best everyday, ready for any challenge with a sense of comfort wearing our shoes.</p>
        </div>
    )
}

export default ProductsDescription