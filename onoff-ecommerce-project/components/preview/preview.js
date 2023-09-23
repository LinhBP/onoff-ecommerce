import React, { useEffect } from 'react'
import Carousel from 'react-elastic-carousel'
import Item from './preview-item.js'
import classes from './preview.module.css'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { faArrowRight } from '@fortawesome/free-solid-svg-icons'
import Link from 'next/dist/client/link'
import Aos from 'aos'
import "aos/dist/aos.css"


const breakPoints = [
    { width: 1, itemsToShow: 1 },
    { width: 550, itemsToShow: 2 },
    { width: 768, itemsToShow: 3 },
    { width: 1200, itemsToShow: 4 },
];

const Preview = (props) => {

    const [sneakers, setSneakers] = React.useState([]);
    const fetchDataWithProducts = async () => {
        try {
            const linkFetchData = `${process.env.NEXT_PUBLIC_API_URL}/api/products/?page=1&limit=10`
            fetch(linkFetchData).then(response => response.json())
                .then(jsonData => {
                    console.log("🚀 ~ file: preview.js:27 ~ fetchDataWithProducts ~ jsonData:", jsonData)
                    setSneakers((prev) => {
                        return [...prev, ...jsonData]
                    });
                })
        } catch (error) {

        }
    };


    useEffect(() => {
        Aos.init({ duration: 500 });
    }, [])

    useEffect(() => {
        fetchDataWithProducts();
    }
        , []);


    return (
        <section data-aos="fade-up" className={classes.section}>
            <div className={classes.header}>
                <div>
                    <h1 className={classes.title}>New Arrivals</h1>
                </div>

            </div>
            <Carousel
                breakPoints={breakPoints}
                enableAutoPlay
                autoPlaySpeed={3000}
                showArrows={false}
                pagination={false}
            >
                {sneakers.map(item =>
                    <Item
                        key={item.id}
                        name={item.name}
                        src={item.image}
                        shoesid={item.shoesid}
                    />
                )}
            </Carousel>
            <div className={classes.btn__container}>
                <Link href='./products'>
                    <button>
                        See All
                        <FontAwesomeIcon className={classes.icon} icon={faArrowRight} />
                    </button>
                </Link>
            </div>
        </section>
    )
}

export default Preview