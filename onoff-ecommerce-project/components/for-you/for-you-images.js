import { useEffect } from "react";
// import classes from "./for-you-images.module.css";
import classes from '../featured-sneaker/featured-sneaker.module.css'

import Link from "next/dist/client/link";
import Aos from "aos";
import "aos/dist/aos.css";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faArrowRight } from '@fortawesome/free-solid-svg-icons'
import Image from "next/image";

const ForYouImages = (props) => {
  useEffect(() => {
    Aos.init({ duration: 1000, once: true });
  }, []);

  return (
    <>

      <div data-aos="fade-left" className={classes.container}>
        <Link href="./products?categoryId=1">
          <div className={classes.image}>
            <Image width='380' height='497' src="/images/Featured/1.png" alt="" />
          </div>
        </Link>
        <Link href="./products?categoryId=2">
          <div className={classes.image}>
            <Image width='380' height='497' src="/images/Featured/2.png" alt="" />
          </div>
        </Link>

        <Link href="./products?categoryId=3">
          <div className={classes.image}>
            <Image width='380' height='497' src="/images/Featured/3.png" alt="" />
          </div>
        </Link>
      </div>

      <div data-aos="fade-left" className={classes.container}>
        <Link href="./products?categoryId=4">
          <div className={classes.image}>
            <Image width='582' height='497' src="/images/Featured/4.png" alt="" />
          </div>
        </Link>
        <Link href="./products?categoryId=5">
          <div className={classes.image}>
            <Image width='582' height='497' src="/images/Featured/5.png" alt="" />
          </div>
        </Link>
      </div>

    </>
  )
};

export default ForYouImages;
