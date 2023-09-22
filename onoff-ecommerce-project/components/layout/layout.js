import MainFooter from './main-footer'
import MainHeader from './main-header'

const Layout = (props) => {
    return (
        <>
            <MainHeader />
            <main>
                {props.children}
            </main>
            <MainFooter />
        </>
    )
}

export default Layout