import { useEffect } from "react";
// import classes from "./brands-images.module.css";
import classes from '../featured-sneaker/featured-sneaker.module.css'

import Link from "next/dist/client/link";
import Aos from "aos";
import "aos/dist/aos.css";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faArrowRight } from '@fortawesome/free-solid-svg-icons'
import Image from "next/image";

const BrandsImages = (props) => {
  useEffect(() => {
    Aos.init({ duration: 1000, once: true });
  }, []);

  const { brands } = props;

  return (
    <>
      <div data-aos="fade-left" className={classes.container}>
        <div className={classes.description}>
          <h1>Custom shoes</h1>
          <p>Whether you’re wearing casual, party, or formal outfits, the right types of footwear are crucial to nail the perfect look.
            The wide variety of ladies' shoes in different types, colors, and materials is sure to leave you spoilt for choice.
          </p>
          <Link href="./products?gender=female">
            <button>Buy Now <FontAwesomeIcon icon={faArrowRight} /></button>
          </Link>
        </div>
        <Link href="./products?gender=female">
          <div className={classes.image}>
            <Image width='400' height='497' src="/images/Featured/1.png" alt="" />
          </div>
        </Link>
      </div>

      <div data-aos="fade-right" className={classes.container}>
        <Link href='./products?gender=male'>
          <div className={classes.image}>
            <Image width='703' height='497' src="/images/Featured/2.png" alt="" />
          </div>
        </Link>
        <div className={classes.description}>
          <h1>Running shoes</h1>
          <p>Discover our men's shoes with ASOS. Our range of men's footwear include trendy loafers, casual and smart shoes, trainers and other styles.
            Discover our men's shoes with us. Our range of men's footwear include trendy loafers, casual and smart shoes, trainers and other styles.
          </p>
          <Link href='./products?gender=male'>
            <button>Buy Now <FontAwesomeIcon icon={faArrowRight} /></button>
          </Link>
        </div>
      </div>

      <div data-aos="fade-left" className={classes.container}>
        <div className={classes.description}>
          <h1>Jordan shoes</h1>
          <p>Whether you’re wearing casual, party, or formal outfits, the right types of footwear are crucial to nail the perfect look.
            The wide variety of ladies' shoes in different types, colors, and materials is sure to leave you spoilt for choice.
          </p>
          <Link href="./products?gender=female">
            <button>Buy Now <FontAwesomeIcon icon={faArrowRight} /></button>
          </Link>
        </div>
        <Link href="./products?gender=female">
          <div className={classes.image}>
            <Image width='703' height='497' src="/images/Featured/test2.png" alt="" />
          </div>
        </Link>
      </div>

      <div data-aos="fade-right" className={classes.container}>
        <Link href='./products?gender=male'>
          <div className={classes.image}>
            <Image width='703' height='497' src="/images/Featured/2.png" alt="" />
          </div>
        </Link>
        <div className={classes.description}>
          <h1>Gym & Traning shoes</h1>
          <p>Discover our men's shoes with ASOS. Our range of men's footwear include trendy loafers, casual and smart shoes, trainers and other styles.
            Discover our men's shoes with us. Our range of men's footwear include trendy loafers, casual and smart shoes, trainers and other styles.
          </p>
          <Link href='./products?gender=male'>
            <button>Buy Now <FontAwesomeIcon icon={faArrowRight} /></button>
          </Link>
        </div>
      </div>

      <div data-aos="fade-left" className={classes.container}>
        <div className={classes.description}>
          <h1>Life styles shoes</h1>
          <p>Whether you’re wearing casual, party, or formal outfits, the right types of footwear are crucial to nail the perfect look.
            The wide variety of ladies' shoes in different types, colors, and materials is sure to leave you spoilt for choice.
          </p>
          <Link href="./products?gender=female">
            <button>Buy Now <FontAwesomeIcon icon={faArrowRight} /></button>
          </Link>
        </div>
        <Link href="./products?gender=female">
          <div className={classes.image}>
            <Image width='703' height='497' src="/images/Featured/1.png" alt="" />
          </div>
        </Link>
      </div>
    </>
  )
};

export default BrandsImages;
