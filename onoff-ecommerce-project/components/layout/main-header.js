import Link from 'next/link'
import classes from './main-header.module.css'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { faCartShopping } from '@fortawesome/free-solid-svg-icons'
import Image from 'next/image'

const MainHeader = () => {
    return (
        <header className={classes.header}>
            <Link href="/">
                <div className={classes.logo}>
                    <Image width='68px' height='68px' src="/images/logo/logo.png" alt="logo" />
                </div>
            </Link>
            <nav >
                <ul className={classes.nav__links}>
                    <Link href="/">
                        <div className={classes.logo}>
                            {/* <Image width='160' height='48' src="/images/logo/logo.png" alt="logo" /> */}
                            <image width='160' height='48' src="/images/logo/logo.png" alt="logo" />
                        </div>
                    </Link>

                    <Link href="/brands">
                        <li >
                            Brands
                        </li >
                    </Link>

                    <Link href="/sales">
                        <li >
                            Sales
                        </li>
                    </Link>

                    <Link href="/products">
                        <li >
                            Products
                        </li>
                    </Link>
                    <Link href="/contact-us" >
                        {/* <button className={classes.button}>Contact us</button> */}
                        <li >
                            Contact us
                        </li>
                    </Link>

                    <Link href="/cart">
                        <li>
                            <FontAwesomeIcon className={classes.nav__icons} icon={faCartShopping} />
                        </li>
                    </Link>
                </ul>
            </nav>
        </header >
    )
}

export default MainHeader