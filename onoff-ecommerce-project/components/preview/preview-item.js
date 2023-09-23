import Link from 'next/link'
import classes from './preview.module.css'

const Item = (props) => {
    const { src, shoesid } = props

    return (
        <div className={classes.container}>
            <Link href={`/products/${shoesid}`} >
                <picture>
                    <img src={src} alt={src} width={300} height={300} />
                </picture>
            </Link>
        </div>
    )
}

export default Item