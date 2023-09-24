const { PrismaClient } = require('@prisma/client')

const prisma = new PrismaClient()

export default async function getAllSneakers(req, res) {
    const { page, limit, sale = false, gender = '', categoryId = 1 } = req.query;
    const parsedPage = parseInt(page, 10) || 1;
    const parsedCategoryId = parseInt(categoryId, 10) || 1;

    const parsedLimit = parseInt(limit, 10) || 10;

    const skip = (parsedPage + parsedCategoryId - 1) * parsedLimit;

    try {
        const findManyOptions = {
            skip,
            take: parsedLimit,
            where: {}
        };



        if (sale) {
            findManyOptions.where['price_before_sale'] = { not: null }
        }
        if (gender !== '') {
            findManyOptions.where['gender'] = gender
        }

        const getAllSneakers = await prisma.shoes.findMany(findManyOptions);

        res.json(getAllSneakers);
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
}