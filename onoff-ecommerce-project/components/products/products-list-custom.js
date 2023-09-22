import React, { useEffect } from 'react';
import ProductsItem from './products-item'
import classes from './products-list.module.css'
import InfiniteScroll from "react-infinite-scroll-component";


const ProductsListCustom = (props) => {
    // const { products, brandId } = props
    const { brandId } = props
    const [products, setProducts] = React.useState([]);
    const [isLoading, setIsLoading] = React.useState(false);
    const [page, setPage] = React.useState(1);

    const fetchDataWithBrand = async () => {
        try {
            const linkFetchData = `${process.env.NEXT_PUBLIC_API_URL}/api/brands/${brandId}/?page=${page}&limit=10`
            setIsLoading(true);
            fetch(linkFetchData).then(response => response.json())
                .then(jsonData => {
                    setProducts((prev) => {
                        return [...prev, ...jsonData]
                    });
                })
        } catch (error) {

        } finally {
            setIsLoading(false);
        }
    };

    const fetchDataWithProducts = async () => {
        try {
            const linkFetchData = `${process.env.NEXT_PUBLIC_API_URL}/api/products/?page=${page}&limit=10`
            setIsLoading(true);
            fetch(linkFetchData).then(response => response.json())
                .then(jsonData => {
                    setProducts((prev) => {
                        return [...prev, ...jsonData]
                    });
                })
        } catch (error) {

        } finally {
            setIsLoading(false);
        }
    };

    useEffect(() => {
        if (brandId) {
            fetchDataWithBrand();
        } else {
            fetchDataWithProducts();
        }
    }, [page, brandId]);


    const observerTarget = React.useRef(null);

    useEffect(() => {
        const observer = new IntersectionObserver(
            entries => {
                if (entries[0].isIntersecting) {
                    setPage(prevPage => prevPage + 1);
                }
            },
            { threshold: 0.05 }
        );

        if (observerTarget.current) {
            observer.observe(observerTarget.current);
        }

        return () => {
            if (observerTarget.current) {
                observer.unobserve(observerTarget.current);
            }
        };
    }, [observerTarget]);

    return (
        <>
            <ul className={classes.list}>
                {products.map((product, productIndex) =>
                    <ProductsItem
                        key={product.productIndex}
                        ShoesID={product.shoesid}
                        Name={product.name}
                        Brand={product.brand}
                        Size={product.size}
                        Color={product.color}
                        Type={product.type}
                        Gender={product.gender}
                        Price={product.price}
                        ImageLink={product.image}
                    />
                )
                }
            </ul>
            {isLoading && <p>Loading...</p>}
            <div ref={observerTarget}></div>
        </>

    )
}

export default ProductsListCustom