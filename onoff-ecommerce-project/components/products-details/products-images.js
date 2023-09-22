import React, { useEffect } from 'react'
import classes from './products-images.module.css'
import Aos from 'aos'
import "aos/dist/aos.css"

const ProductsImages = (props) => {
    useEffect(() => {
        Aos.init({ duration: 2000 });
    }, [])

    const { data } = props;
    const { shoesid, related_image_shoes } = data
    console.log('related_image_shoes', related_image_shoes.length);
    const idsInitial = [0, 1, 2, 3]


    return (
        <>
            <div className={classes.container}>
                <picture>
                    {related_image_shoes.length === 0 ? (idsInitial.map((eachIdInitial, indexInitial) => {
                        return (
                            <img key={indexInitial} alt={`/images/ImageDetails/${shoesid}/${eachIdInitial}.jpg`} data-aos="fade-right" data-aos-delay="200" className={classes.img} src={`/images/ImageDetails/${shoesid}/${eachIdInitial}.jpg`} />
                        )
                    })) : (
                        related_image_shoes.map((eachImageRelated, indexInitial) => {
                            const { image } = eachImageRelated
                            return (
                                <img key={indexInitial} alt={image} data-aos="fade-right" data-aos-delay="200" className={classes.img} src={image} />
                            )
                        })

                    )}
                    {/* <img alt={`/images/ImageDetails/${shoesid}/0.jpg`} data-aos="fade-right" data-aos-delay="200" className={classes.img} src={`/images/ImageDetails/${shoesid}/0.jpg`} />
                    <img alt={`/images/ImageDetails/${shoesid}/1.jpg`} data-aos="fade-right" data-aos-delay="200" className={classes.img} src={`/images/ImageDetails/${shoesid}/1.jpg`} />
                    <img alt={`/images/ImageDetails/${shoesid}/2.jpg`} data-aos="fade-right" data-aos-delay="200" className={classes.img} src={`/images/ImageDetails/${shoesid}/2.jpg`} />
                    <img alt={`/images/ImageDetails/${shoesid}/3.jpg`} data-aos="fade-right" data-aos-delay="200" className={classes.img} src={`/images/ImageDetails/${shoesid}/3.jpg`} /> */}
                </picture>
            </div>
        </>
    )
}

export default ProductsImages