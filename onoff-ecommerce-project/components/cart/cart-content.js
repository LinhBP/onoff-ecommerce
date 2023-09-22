import CartBill from './cart-bill'
import classes from "./cart-content.module.css"
import CartList from './cart-list'

const CartContent = () => {
    return (
        <div className={classes.cart__content}>
            <div className={classes.cart__list}>
                <CartList />
            </div>
            <div className={classes.cart__bill}>
                <CartBill />
            </div>
        </div>
    )
}

export default CartContent