import React, { useEffect } from 'react'
import useSWR from 'swr'
import { useRouter } from 'next/router'
import ProductsBanner from '../../components/products/products-banner'
import for-youDescription from '../../components/for-you-details/for-you-description';
import for-youHeader from '../../components/for-you-details/for-you-header';
import ProductsList from '../../components/products/products-list';



const for-youDetailedPage = () => {
    const router = useRouter();
    const id = router.query.for - youID;
    const { data, error } = useSWR(id ? `/api/for-you/${id}` : null, (url) => fetch(url).then(res => res.json()));




    if (error) return <div>An error occured.</div>
    if (!data) return <div>Loading ...</div>

    return (
        <>
            <ProductsBanner />
            <for-youDescription for-you={id} />
            <for-youHeader for-you={id} />
            <ProductsList for-youId={id} />
        </>
    )
}

export default for-youDetailedPage