import classes from './preview.module.css'

const Item = (props) => {
    const { src } = props

    return (
        <div className={classes.container}>
            <picture>
                <img src={src} alt={src} />
            </picture>
        </div>
    )
}

export default Item