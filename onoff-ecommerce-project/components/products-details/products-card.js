import React, { useEffect, useContext } from 'react'
import classes from './products-card.module.css'
import ShoppingCartContext from '../../store/shopping-cart-context'
import Aos from 'aos'
import "aos/dist/aos.css"
import { HideOn } from 'react-hide-on-scroll'

const getSize = (sizeString) => {
    const firstSizeRange = 0;
    const lastSizeRange = 0;

    if (sizeString.length > 2) {
        firstSizeRange = Number(sizeString[0]);
        if (sizeString[4])
            lastSizeRange = Number(sizeString[3] + sizeString[4]);
        else
            lastSizeRange = Number(sizeString[3])

        return {
            firstSizeRange: firstSizeRange,
            lastSizeRange: lastSizeRange
        }
    }
    else
        return -1;
}

const ProductsCard = (props) => {
    const { data } = props;
    const { size } = data

    const [isElementHidden, setIsElementHidden] = React.useState(false);

    //render the sizeRange 
    const shoes_size = getSize(data.size);
    let sizeRange;
    if (size === '') {
        sizeRange = new Array(shoes_size.lastSizeRange - shoes_size.firstSizeRange || 0)
        if (shoes_size !== -1) {
            let num = shoes_size.firstSizeRange;
            for (let j = 0; j <= shoes_size.lastSizeRange - shoes_size.firstSizeRange; j++) {
                sizeRange[j] = num;
                num++;
            }
        }
    } else {
        sizeRange = size.split(',');
    }


    const ShoppingCartCtx = useContext(ShoppingCartContext);
    function onSubmitHandler(event) {
        event.preventDefault();
        ShoppingCartCtx.addToCart(data);
    }

    useEffect(() => {
        Aos.init({ duration: 2000 });
    }, [])

    useEffect(() => {
        const handleScroll = () => {
            const scrollY = window.scrollY;
            const windowHeight = window.innerHeight;
            const documentHeight = document.documentElement.scrollHeight;

            // Khoảng cách còn lại từ đáy trang (cách đáy màn hình một khoảng window.innerHeight)
            const distanceFromBottom = documentHeight - (scrollY + windowHeight);

            // Kiểm tra nếu chúng ta đã cuộn đến đáy trang
            if (distanceFromBottom < 100) {
                // Đã đến đáy trang, ẩn phần tử
                setIsElementHidden(true);
            } else {
                // Chưa đến đáy trang, hiển thị phần tử
                setIsElementHidden(false);
            }
        };

        window.addEventListener('scroll', handleScroll);

        // Thêm một sự kiện scroll lần đầu để kiểm tra trạng thái ban đầu
        handleScroll();

        return () => {
            window.removeEventListener('scroll', handleScroll);
        };
    }, []);


    return (
        <div>
            {isElementHidden ? (<></>) : (
                <div id="hide" data-aos="fade-up" className={classes.container}>
                    <h2 className={classes.brand}>{data.brand}</h2>
                    <h2 className={classes.name}>{data.name}</h2>
                    <h3 className={classes.type}>{data.detail}</h3>
                    <h3 className={classes.type}>{data.gender} {data.type}</h3>
                    <p className={classes.price}>{`$${data.price}`}</p>

                    {shoes_size === -1 ? (
                        <>
                            <p className={classes.size}>Selected size: </p>
                            <select className={classes.select}>
                                <option value="0">{data.size}</option>
                            </select>
                        </>
                    ) : (
                        <>
                            <p className={classes.size}>Selected size: </p>
                            <select className={classes.select}>
                                {sizeRange.map((size, index) => (
                                    <option key={index} value={index}>{size}</option>
                                ))}
                            </select>
                        </>
                    )}
                    <br />
                    <button onClick={onSubmitHandler} className={classes.button}>Add to cart</button>
                </div>
            )}
        </div>
    )
}

export default ProductsCard