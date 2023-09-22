import React, { useContext } from 'react'
import CartContent from '../components/cart/cart-content'
import CartHeader from '../components/cart/cart-header'
import ShoppingCartContext from '../store/shopping-cart-context'

const Cart = () => {
    const ShoppingCartCtx = useContext(ShoppingCartContext);
    const cartItems = ShoppingCartCtx.cart;

    return (
        <>
            <CartHeader />
            <CartContent />
        </>
    )
}

export default Cart