import React from 'react'
import useSWR from 'swr'
import ProductsBanner from '../../components/products/products-banner';
import ProductsDescription from '../../components/products/products-description';
import SalesList from '../../components/products/sales-list';

const Sales = (props) => {
    const { data, error } = useSWR('api/products', (url) => fetch(url).then(res => res.json()));
    if (error) return <div>An error occured.</div>
    if (!data) return <div>Loading ...</div>
    return (
        <>
            <ProductsBanner />
            <ProductsDescription />
            <SalesList />
        </>
    )
}

export default Sales