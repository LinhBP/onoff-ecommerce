import React from "react";
import useSWR from "swr";
import BrandsImages from "../../components/brands/brands-images";
import ProductsBanner from "../../components/products/products-banner";
import Banner from "../../components/banner/banner";

const Brands = (props) => {
  const { data, error } = useSWR("api/brands", (url) =>
    fetch(url).then((res) => res.json())
  );
  if (error) return <div>An error occured.</div>;
  if (!data) return <div>Loading ...</div>;

  const brand_list = [];
  data.map((item) => brand_list.push(item.brand));

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
