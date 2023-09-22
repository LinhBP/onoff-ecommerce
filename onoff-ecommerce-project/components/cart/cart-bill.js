import { useContext } from 'react'
import classes from "./cart-bill.module.css"
import ShoppingCartContext from '../../store/shopping-cart-context'
import { checkout } from '../../stripe/checkout';

export const server = process.env.NEXT_PUBLIC_API_URL

const CartBill = () => {

    const ShoppingCartCtx = useContext(ShoppingCartContext);

    const { cart } = ShoppingCartCtx;
    const totalPrice = ShoppingCartCtx.totalPrice();


    function checkoutHandler(event) {
        event.preventDefault();

        const price = totalPrice;

        price = Number(price.substring(1))

        const newBill = {
            price
        };

        fetch(`${server}/api/bill`, {
            method: "POST",
            body: JSON.stringify(newBill),
            headers: {
                "Content-Type": "application/json",
            },
        })
            .then((response) => {
                if (response.ok) {
                    return response.json();
                }
                return response.json().then((data) => {
                    throw new Error(data.message);
                });
            })

        let lineItems = [];
        cart.map((item) => {
            lineItems.push({ price: item.stripeid, quantity: 1 })
        });

        checkout({
            lineItems
        })
    }

    return (
        <div className={classes["cart-bill"]}>
            <div className={classes["cart-bill-header"]}>Your Bill</div>
            <div className={classes["cart-bill-content"]}>
                <div className={classes["cart-bill-item-container"]}>
                    {
                        cart.map((item) => (
                            <div className={classes["cart-bill-item"]} key={item.shoesid}>
                                <h3 className={classes.h3}>{item.name}</h3>
                                <p>
                                    {`$${item.price}`}
                                </p>
                            </div>
                        ))
                    }
                </div>
                <div className={classes["total-price"]}>
                    <p>Total</p>
                    <p>{totalPrice}</p>
                </div>
            </div>
            <button onClick={checkoutHandler} className={classes["check-out"]} >
                Checkout
            </button>
        </div>
    )
}

export default CartBill