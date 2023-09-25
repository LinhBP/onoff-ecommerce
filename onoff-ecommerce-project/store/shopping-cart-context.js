import { createContext, useState } from "react";

const ShoppingCartContext = createContext({
    products: [],
    cart: [],
    addToCart: function () { },
    removeProduct: function () { },
    totalPrice: function () { },
});

export function ShoppingCartContextProvider(props) {
    const [cart, setCart] = useState([]);

    function addToCartHandler(product) {
        const check = cart.every((item) => item.shoesid !== product.shoesid);

        if (check) {
            setCart([...cart, { ...product }]);
            alert("Add item successfull");
        } else {
            alert("Item has been added to the cart");
        }
    }

    function removeProduct(id) {
        if (window.confirm("Do you want to delete this product?")) {
            cart.forEach((item, index) => {
                if (item.shoesid === id) {
                    cart.splice(index, 1);
                }
            });
            setCart([...cart]);
        }
    }

    function totalPrice() {
        const res = cart.reduce((prev, item) => {
            return Number(prev) + Number(item.price);
        }, 0);
        return `$${res}`;
    }

    const context = {
        // products: allProducts,
        cart: cart,
        addToCart: addToCartHandler,
        removeProduct: removeProduct,
        totalPrice: totalPrice,
    };

    return (
        <ShoppingCartContext.Provider value={context}>
            {props.children}
        </ShoppingCartContext.Provider>
    );
}

export default ShoppingCartContext;