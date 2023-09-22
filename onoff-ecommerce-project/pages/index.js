import React, { useEffect } from "react";
import Banner from "../components/banner/banner";
import FeaturedSneaker from "../components/featured-sneaker/featured-sneaker";
import HeroContent from "../components/hero-content/hero-content";
import Preview from "../components/preview/preview";
import Aos from "aos";
import "aos/dist/aos.css";

const HomePage = () => {
  useEffect(() => {
    Aos.init({ duration: 2000 });
  }, []);
  return (
    <>
      <HeroContent />
      <FeaturedSneaker />
      <Banner />
      <Preview />
    </>
  );
};

export default HomePage;
