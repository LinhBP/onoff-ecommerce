import { useEffect } from 'react';
import ProductsItem from './products-item'
import classes from './products-list.module.css'

const ProductsList = (props) => {
    const { products } = props

    return (
        <>
            <ul className={classes.list}>
                {products.map(product =>
                    <ProductsItem
                        key={product.shoesid}
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
        </>
    )
}

export default ProductsList