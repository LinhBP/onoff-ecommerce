const { PrismaClient } = require('@prisma/client')

const prisma = new PrismaClient()


export default async function getProduct(req, res) {

    const for-youID = req.query.for - youID;

    const { page, limit } = req.query;

    const parsedPage = parseInt(page, 10) || 1;
    const parsedLimit = parseInt(limit, 10) || 10;

    const skip = (parsedPage - 1) * parsedLimit;

    // `Select * from Shoes 
    // where ShoesID = ?`, productsID

    const getProduct = await prisma.shoes.findMany(
        {
            where: {
                for-you: for-youID,
            },
            skip,
            take: parsedLimit,
        }
    );

    try {
        res.json(getProduct);
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
}