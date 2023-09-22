import React, { useContext } from 'react'
import Image from "next/image";
import classes from './cart-item.module.css'

import ShoppingCartContext from "../../store/shopping-cart-context";


const CartItem = (props) => {
    const ShoppingCartCtx = useContext(ShoppingCartContext);

    const { data } = props

    function remove() {
        ShoppingCartCtx.removeProduct(data.shoesid);
    }

    return (
        <li key={data.shoesid} className={classes["cart-item"]}>
            <div className={classes["item-name"]}>
                <picture>
                    <img className={classes.img} src={data.image + ".jpg"} alt={data.name} />
                </picture>
                <h2>{data.name}</h2>
            </div>
            <p className={classes["item-price"]}>
                {`$${data.price}`}
            </p>
            <p className={classes["item-price"]}>
                {data.price / data.price}
            </p>
            <div className={classes["item-price"]}>
                {`$${data.price}`}
            </div>
            <button className={classes["delete-item"]} onClick={remove}>
                X
            </button>
        </li>
    )
}

export default CartItem