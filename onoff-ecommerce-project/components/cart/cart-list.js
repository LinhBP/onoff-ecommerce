import  { useContext } from 'react'
import classes from "./cart-list.module.css"
import ShoppingCartContext from '../../store/shopping-cart-context'
import CartItem from './cart-item';

const CartList = () => {

    const ShoppingCartCtx = useContext(ShoppingCartContext);
    const cartItems = ShoppingCartCtx.cart;

    if (cartItems.length === 0) {
        return (
            <>
                <ul className={classes.cart__list}>
                    <li className={classes.cart__header}>
                        <p>Product</p>
                        <p>Price</p>
                        <p>Quantity</p>
                        <p>Total</p>
                        <p>Delete</p>
                    </li>
                    <h2 className={classes.empty}>
                        There are not any products yet !!~
                    </h2>
                </ul>
            </>
        );
    }

    console.log(cartItems);

    return (
        <>
            <ul className={classes.cart__list}>
                <li className={classes.cart__header}>
                    <p>Product</p>
                    <p>Price</p>
                    <p>Quantity</p>
                    <p>Total</p>
                    <p>Delete</p>
                </li>
                {cartItems.map((item, index) => (
                    <CartItem key={index} data={item} />
                ))}
            </ul>
        </>
    )
}

export default CartList