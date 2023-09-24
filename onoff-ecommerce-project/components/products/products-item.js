import { useEffect } from 'react'
import classes from './products-item.module.css'
import Image from 'next/image'
import Link from 'next/link'
import Aos from 'aos'
import "aos/dist/aos.css"

const ProductsItem = (props) => {
    const {
        ShoesID,
        Name,
        Size,
        Color,
        Type,
        Gender,
        Price,
        ImageLink,
    } = props;


    useEffect(() => {
        Aos.init({ duration: 1000 });
    }, [])

    return (
        <div data-aos="fade-up" className={classes.item__container}>
            <Link href={`/products/${ShoesID}`}>
                <li className={classes.item} key={ShoesID}>
                    <div >
                        <Image className={classes.image} src={ImageLink} alt={Name} width={280} height={280} />
                    </div>
                    <div className={classes.content__container}>
                        <a className={classes.content__name}>{Name}</a>
                        <p className={classes.content__price}>{"$" + Price}</p>
                    </div>
                </li>
            </Link>
        </div >
    )
}

export default ProductsItem