import Link from "next/link";
import classes from "./main-footer.module.css";

function MainFooter() {
    return (
        <footer className={classes["footer"]}>
            <div className={classes["footer-container"]}>
                <div className={classes["footer-item"]}>
                    <h4>About</h4>
                    <div className={classes["footer-link"]}>
                        <Link href="/">
                            <a className={classes["link"]}>Company</a>
                        </Link>
                        <Link href="/">
                            <a className={classes["link"]}>Careers</a>
                        </Link>
                        <Link href="/">
                            <a className={classes["link"]}>Help Center</a>
                        </Link>
                        <Link href="/">
                            <a className={classes["link"]}>Privacy</a>
                        </Link>
                        <Link href="/">
                            <a className={classes["link"]}>Terms & Conditions</a>
                        </Link>
                    </div>
                </div>
                <div className={classes["footer-item"]}>
                    <h4>Services</h4>
                    <div className={classes["footer-link"]}>
                        <Link href="/">
                            <a className={classes["link"]}>Sneakers Ordering</a>
                        </Link>
                        <Link href="/">
                            <a className={classes["link"]}>Sneakers Rental</a>
                        </Link>
                        <Link href="/">
                            <a className={classes["link"]}>Sneakers Cleaning</a>
                        </Link>
                        <Link href="/">
                            <a className={classes["link"]}>Sneakers Accessories</a>
                        </Link>
                        <Link href="/">
                            <a className={classes["link"]}>Sneakers Shops</a>
                        </Link>
                    </div>
                </div>
                <div className={classes["footer-item"]}>
                    <h4>GET HELP</h4>
                    <div className={classes["footer-link"]}>
                        <Link href="/">
                            <a className={classes["link"]}>Order Status</a>
                        </Link>
                        <Link href="/">
                            <a className={classes["link"]}>Delivery</a>
                        </Link>
                        <Link href="/">
                            <a className={classes["link"]}>Returns</a>
                        </Link>
                        <Link href="/">
                            <a className={classes["link"]}>Payment Options</a>
                        </Link>
                        <Link href="/">
                            <a className={classes["link"]}>Contact Us</a>
                        </Link>
                    </div>
                </div>
                <div className={classes["footer-item"]}>
                    <h4>Pay Safely With Us</h4>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa,
                        quaerat nam, similique assumenda quam dolor ratione voluptatibus
                        iure dicta pariatur.
                    </p>
                    <div className={classes["sponsor-logo"]}>
                        <img src="/images/logo/paypal.png" alt="Paypal" />
                        <img src="/images/logo/american.png" alt="American Express" />
                        <img src="/images/logo/visa.png" alt="Visa" />
                    </div>
                </div>
            </div>
        </footer>
    );
}

export default MainFooter;