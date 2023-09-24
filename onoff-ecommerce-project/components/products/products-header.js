import { useEffect } from 'react'
import classes from './products-header.module.css'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { faCaretDown } from '@fortawesome/free-solid-svg-icons'
import Aos from 'aos'
import "aos/dist/aos.css"

const ProductsHeader = () => {
    useEffect(() => {
        Aos.init({ duration: 1000 });
    }, [])

    return (
        <>
            <div data-aos="fade-right" className={classes.header__container}>
                <h2 className={classes.header__title}>All sneakers</h2>
                <div >
                    <ul className={classes.header__category}>
                        <li key={`CATEGORY`}><FontAwesomeIcon className={classes.header__icon} icon={faCaretDown} />CATEGORY</li>
                        <li key={`PRICE`}><FontAwesomeIcon className={classes.header__icon} icon={faCaretDown} />PRICE</li>
                        <li key={`GENDER`}><FontAwesomeIcon className={classes.header__icon} icon={faCaretDown} />GENDER</li>
                        <li key={`SIZE`}><FontAwesomeIcon className={classes.header__icon} icon={faCaretDown} />SIZE</li>
                        <li key={`for-you`}><FontAwesomeIcon className={classes.header__icon} icon={faCaretDown} />for-you</li>
                    </ul>
                </div>
            </div>
        </>
    )
}

export default ProductsHeader