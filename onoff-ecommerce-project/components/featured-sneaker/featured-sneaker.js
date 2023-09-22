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
                    <h1>Nike Waffle One</h1>
                    <p>Bringing a new look the Nike Waffle One blances everything you love most about
                        heritage Nike running with fresh innovations.
                    </p>
                    <Link href="./brands/Nike">
                        <button>Buy Now <FontAwesomeIcon icon={faArrowRight} /></button>
                    </Link>
                </div>
                <Link href="./brands/Nike">
                    <div className={classes.image}>
                        <Image width='703' height='497' src="/images/Featured/2.jpg" alt="" />
                    </div>
                </Link>
            </div>

            <div data-aos="fade-right" className={classes.container}>
                <Link href='./brands/Adidas'>
                    <div className={classes.image}>
                        <Image width='703' height='497' src="/images/Featured/1.jpg" alt="" />
                    </div>
                </Link>
                <div className={classes.description}>
                    <h1>Adidas Originals</h1>
                    <p>Discover the adidas streetwear collection
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