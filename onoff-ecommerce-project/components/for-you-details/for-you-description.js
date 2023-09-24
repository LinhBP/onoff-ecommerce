import { useEffect } from 'react'
import Link from 'next/link'
import Image from 'next/image'
import classes from './for-you-description.module.css'
import Aos from 'aos'
import "aos/dist/aos.css"

const ForYouDescription = (props) => {

    useEffect(() => {
        Aos.init({ duration: 1000 });
    }, [])

    return (
        <>
            <div data-aos="fade-up" className={classes.body__container}>
                <h1 className={classes.body__title__first}>FIND YOUR PERFECT <br /> PAIR</h1>
                <p className={classes.body__content}>
                    Finding the perfect shoes is easier than never with ONOFF.
                    We are here to help you save your time and energy by providing you a list of recommended shoes according to your desire.
                </p>
            </div>
        </>
    )
}

export default ForYouDescription