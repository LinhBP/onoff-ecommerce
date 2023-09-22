import { useEffect } from "react";
import classes from "./banner.module.css";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import {
  faTag,
  faTruck,
  faMoneyBillWave,
} from "@fortawesome/free-solid-svg-icons";
import Aos from "aos";
import "aos/dist/aos.css";

const Banner = () => {
  useEffect(() => {
    Aos.init({ duration: 2000 });
  }, []);
  return (
    <div
      data-aos="fade-down"
      data-aos-easing="linear"
      data-aos-duration="1000"
      className={classes.container}
    >
      <div className={classes.content}>
        <div className={classes.icon}>
          <FontAwesomeIcon icon={faTruck} />
        </div>
        <div className={classes.description}>
          <div className={classes.title}>
            <h2>Fast shipping</h2>
          </div>
          <div className={classes.subtitle}>
            <p>Deliveries Worldwide</p>
          </div>
        </div>
      </div>

      <div className={classes.content}>
        <div className={classes.icon}>
          <FontAwesomeIcon icon={faMoneyBillWave} />
        </div>
        <div className={classes.description}>
          <div className={classes.title}>
            <h2>Secure payment</h2>
          </div>
          <div className={classes.subtitle}>
            <p>Paypal or Credit Card</p>
          </div>
        </div>
      </div>

      <div className={classes.content}>
        <div className={classes.icon}>
          <FontAwesomeIcon icon={faTag} />
        </div>
        <div className={classes.description}>
          <div className={classes.title}>
            <h2>Great Offers</h2>
          </div>
          <div className={classes.subtitle}>
            <p>If you come to our shop</p>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Banner;
