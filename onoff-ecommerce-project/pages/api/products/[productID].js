const { PrismaClient } = require('@prisma/client')

const prisma = new PrismaClient()


export default async function getProduct(req, res) {

    const shoesId = req.query.productID;

    // `Select * from Shoes 
    // where ShoesID = ?`, productsID

    const getProduct = await prisma.shoes.findFirst(
        {
            where: {
                shoesid: Number(shoesId),
            },
            include: {
                related_image_shoes: true
            }
        }
    );

    try {
        res.json(getProduct);
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
}