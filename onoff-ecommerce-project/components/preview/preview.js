import { useEffect } from 'react'
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

const sneakers = [
    {
        id: 1, name: "item1", img: 'images/lux/1.jpg'
    },
    {
        id: 2, name: "item1", img: 'images/lux/3.jpg'
    },
    {
        id: 3, name: "item1", img: 'images/lux/12.jpg'
    },
    {
        id: 4, name: "item1", img: 'images/lux/4.jpg'
    },
    {
        id: 5, name: "item1", img: 'images/lux/5.jpg'
    },
    {
        id: 6, name: "item1", img: 'images/lux/6.jpg'
    },
    {
        id: 7, name: "item1", img: 'images/lux/7.jpg'
    },
    {
        id: 8, name: "item1", img: 'images/lux/8.jpg'
    },
    {
        id: 9, name: "item1", img: 'images/lux/9.jpg'
    },
    {
        id: 10, name: "item1", img: 'images/lux/10.jpg'
    },
    {
        id: 11, name: "item1", img: 'images/lux/11.jpg'
    },
    {
        id: 12, name: "item1", img: 'images/lux/2.jpg'
    },
]

const Preview = (props) => {
    useEffect(() => {
        Aos.init({ duration: 500 });
    }, [])
    return (
        <section data-aos="fade-up" className={classes.section}>
            <div className={classes.header}>
                <div>
                    <h1 className={classes.title}>Incoming Arrivals</h1>
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
                        src={item.img}
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