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
                    <h1>For Wommen</h1>
                    <p>Whether you’re wearing casual, party, or formal outfits, the right types of footwear are crucial to nail the perfect look.
                    </p>
                    <Link href="./products?gender=female">
                        <button>Buy Now <FontAwesomeIcon icon={faArrowRight} /></button>
                    </Link>
                </div>
                <Link href="./products?gender=female">
                    <div className={classes.image}>
                        <Image width='650' height='497' src="/images/Featured/women.png" alt="" />
                    </div>
                </Link>
            </div>

            <div data-aos="fade-right" className={classes.container}>
                <Link href='./products?gender=male'>
                    <div className={classes.image}>
                        <Image width='650' height='497' src="/images/Featured/men.png" alt="" />
                    </div>
                </Link>
                <div className={classes.description}>
                    <h1>For men</h1>
                    <p>
                        Discover our men's shoes with us. Our range of men's footwear include trendy loafers, casual and smart shoes, trainers and other styles.
                    </p>
                    <Link href='./products?gender=male'>
                        <button>Buy Now <FontAwesomeIcon icon={faArrowRight} /></button>
                    </Link>
                </div>
            </div>
        </>
    )
}

export default FeaturedSneaker