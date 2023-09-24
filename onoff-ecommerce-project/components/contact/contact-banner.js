import classes from "./contact-banner.module.css";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faLocationDot, faPhone } from "@fortawesome/free-solid-svg-icons";
import { faFacebook } from "@fortawesome/free-brands-svg-icons";

const ContactBanner = () => {
  return (
    <>
      <h1 className={classes.big_title}>information</h1>
      <div className={classes.container}>
        <div className={classes.content}>
          <div className={classes.icon}>
            <FontAwesomeIcon icon={faLocationDot} />
          </div>
          <div className={classes.description}>
            <div className={classes.title}>
              <h2>Hanoi, Vietnam</h2>
            </div>
            <div className={classes.subtitle}>
              <p>Giai Phong Street</p>
            </div>
          </div>
        </div>

        <div className={classes.content}>
          <div className={classes.icon}>
            <FontAwesomeIcon icon={faPhone} />
          </div>
          <div className={classes.description}>
            <div className={classes.title}>
              <h2>Contacts</h2>
            </div>
            <div className={classes.subtitle}>
              <p>Phone: 0363 462 808</p>
              <p>Email: onoffshoes@gmail.com</p>
            </div>
          </div>
        </div>

        <div className={classes.content}>
          <div className={classes.icon}>
            <FontAwesomeIcon icon={faFacebook} />
          </div>
          <div className={classes.description}>
            <div className={classes.title}>
              <h2>Social Media</h2>
            </div>
            <div className={classes.subtitle}>
              <p>Facebook: ONOFF SHOES</p>
            </div>
          </div>
        </div>
      </div>
    </>
  );
};

export default ContactBanner;
