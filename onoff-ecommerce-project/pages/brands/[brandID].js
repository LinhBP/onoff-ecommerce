import React, { useEffect } from 'react'
import useSWR from 'swr'
import { useRouter } from 'next/router'
import ProductsBanner from '../../components/products/products-banner'
import BrandsDescription from '../../components/brands-details/brands-description';
import BrandsHeader from '../../components/brands-details/brands-header';
import ProductsList from '../../components/products/products-list';
import ProductsListCustom from '../../components/products/products-list-custom';



const BrandDetailedPage = () => {
    const router = useRouter();
    const id = router.query.brandID;
    const { data, error } = useSWR(id ? `/api/brands/${id}` : null, (url) => fetch(url).then(res => res.json()));




    if (error) return <div>An error occured.</div>
    if (!data) return <div>Loading ...</div>

    return (
        <>
            <ProductsBanner />
            <BrandsDescription brand={id} />
            <BrandsHeader brand={id} />
            <ProductsListCustom brandId={id} />
        </>
    )
}

export default BrandDetailedPage