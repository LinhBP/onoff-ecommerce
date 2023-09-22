const { PrismaClient } = require('@prisma/client')

const prisma = new PrismaClient()

export default async function getAllSneakers(req, res) {
    const { page, limit } = req.query;

    const parsedPage = parseInt(page, 10) || 1;
    const parsedLimit = parseInt(limit, 10) || 10;

    const skip = (parsedPage - 1) * parsedLimit;

    try {
        const getAllSneakers = await prisma.shoes.findMany({
            skip,
            take: parsedLimit,
        });

        res.json(getAllSneakers);
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
}