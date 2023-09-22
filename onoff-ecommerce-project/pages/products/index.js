import React from 'react'
import useSWR from 'swr'
import ProductsBanner from '../../components/products/products-banner';
import ProductsDescription from '../../components/products/products-description';
import ProductsHeader from '../../components/products/products-header';
import ProductsList from '../../components/products/products-list';
import ProductsListCustom from '../../components/products/products-list-custom';

const Products = (props) => {
    const { data, error } = useSWR('api/products', (url) => fetch(url).then(res => res.json()));
    if (error) return <div>An error occured.</div>
    if (!data) return <div>Loading ...</div>
    return (
        <>
            <ProductsBanner />
            <ProductsDescription />
            <ProductsHeader />
            <ProductsListCustom />
        </>
    )
}

export default Products