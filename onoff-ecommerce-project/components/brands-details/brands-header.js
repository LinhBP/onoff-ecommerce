import  { useEffect } from 'react'
import classes from './brands-header.module.css'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { faCaretDown } from '@fortawesome/free-solid-svg-icons'
import Aos from 'aos'
import "aos/dist/aos.css"

const BrandsHeader = (props) => {

    const { brand } = props;

    useEffect(() => {
        Aos.init({ duration: 1000 });
    }, [])

    return (
        <>
            <div data-aos="fade-right" className={classes.header__container}>
                <h2 className={classes.header__title}>{brand}</h2>
                <div >
                    <ul className={classes.header__category}>
                        <li key={`CATEGORY`}><FontAwesomeIcon className={classes.header__icon} icon={faCaretDown} />CATEGORY</li>
                        <li key={`PRICE`}><FontAwesomeIcon className={classes.header__icon} icon={faCaretDown} />PRICE</li>
                        <li key={`GENDER`}><FontAwesomeIcon className={classes.header__icon} icon={faCaretDown} />GENDER</li>
                        <li key={`SIZE`}><FontAwesomeIcon className={classes.header__icon} icon={faCaretDown} />SIZE</li>
                    </ul>
                </div>
            </div>
        </>
    )
}

export default BrandsHeader