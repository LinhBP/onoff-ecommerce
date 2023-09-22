import React from 'react'
import ProductsBanner from '../../components/products/products-banner'
import useSWR from 'swr'
import { useRouter } from 'next/router'
import ProductsImages from '../../components/products-details/products-images'
import ProductsCard from '../../components/products-details/products-card'


const ProductDetailedPage = (props) => {
    const router = useRouter();
    const id = router.query.productID;

    const { data, error } = useSWR(id ? `/api/products/${id}` : null, (url) => fetch(url).then(res => res.json()));
    if (error) return <div>An error occured.</div>
    if (!data) return <div>Loading ...</div>

    return (
        <>
            <ProductsBanner />
            <ProductsImages id={id} data={data} />
            <ProductsCard data={data} />
        </>
    )
}

export default ProductDetailedPage