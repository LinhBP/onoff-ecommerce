import React from "react";
import useSWR from "swr";
import BrandsImages from "../../components/brands/brands-images";
import ProductsBanner from "../../components/products/products-banner";
import Banner from "../../components/banner/banner";

const Brands = (props) => {
  const brand_list = ['custom_shoes', 'gym_training', 'jordan', 'life_style', 'running'];

  return (
    <>
      <ProductsBanner />
      <BrandsImages brands={brand_list} />
    </>
  );
};

// export async function getServerSideProps() {
//     const allBrands = await getAllBrands();

//     return {
//         props: {
//             allBrands: allBrands,
//         },
//     }
// }

export default Brands;
