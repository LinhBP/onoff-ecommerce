import { useEffect } from 'react'
import Link from 'next/dist/client/link'
import Image from 'next/image'
import classes from './featured-sneaker.module.css'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { faArrowRight } from '@fortawesome/free-solid-svg-icons'
import Aos from 'aos'
import "aos/dist/aos.css"

const FeaturedSneaker = () => {
    useEffect(() => {
        Aos.init({ duration: 500 });
    }, [])
    return (
        <>
            <div data-aos="fade-left" className={classes.container}>
                <div className={classes.description}>
                    <h1>Nike Wommen</h1>
                    <p>Whether you’re wearing casual, party, or formal outfits, the right types of footwear are crucial to nail the perfect look.
                        The wide variety of ladies' shoes in different types, colors, and materials is sure to leave you spoilt for choice.
                    </p>
                    <Link href="./brands/Nike">
                        <button>Buy Now <FontAwesomeIcon icon={faArrowRight} /></button>
                    </Link>
                </div>
                <Link href="./brands/Nike">
                    <div className={classes.image}>
                        <Image width='703' height='497' src="/images/Featured/1.png" alt="" />
                    </div>
                </Link>
            </div>

            <div data-aos="fade-right" className={classes.container}>
                <Link href='./brands/Adidas'>
                    <div className={classes.image}>
                        <Image width='703' height='497' src="/images/Featured/2.png" alt="" />
                    </div>
                </Link>
                <div className={classes.description}>
                    <h1>Nike Men</h1>
                    <p>Discover our men's shoes with ASOS. Our range of men's footwear include trendy loafers, casual and smart shoes, trainers and other styles.
                        Discover our men's shoes with us. Our range of men's footwear include trendy loafers, casual and smart shoes, trainers and other styles.
                    </p>
                    <Link href='./brands/Adidas'>
                        <button>Buy Now <FontAwesomeIcon icon={faArrowRight} /></button>
                    </Link>
                </div>
            </div>
        </>
    )
}

export default FeaturedSneaker