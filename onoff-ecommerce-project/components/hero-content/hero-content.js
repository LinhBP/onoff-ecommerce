import { useEffect } from 'react'
import classes from './hero-content.module.css'
import Link from 'next/dist/client/link'
import Aos from 'aos'
import "aos/dist/aos.css"

const HeroContents = () => {
    useEffect(() => {
        Aos.init({ duration: 2000 });
    }, [])

    return (
        <div data-aos="fade-up" className={classes.container}>
            <div className={classes.content}>
                <div className={classes.items}>
                    {/* <h1>NEW ARRIVALS</h1>
                    <p>Latest Summer Collection</p> */}
                    <h1></h1>
                    <h1></h1>
                    <h1></h1>
                    <Link href='/products'><button>Discover Now</button></Link>
                </div>
            </div>

        </div >
    )
}

export default HeroContents