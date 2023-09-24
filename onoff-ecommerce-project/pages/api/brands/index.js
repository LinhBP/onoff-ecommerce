const { PrismaClient } = require('@prisma/client')

const prisma = new PrismaClient()

export default async function getAllfor-you(req, res) {
    const allfor-you = await prisma.shoes.findMany({
        select: {
            for-you: true
        }
    })

    const seen = new Set();

    const uniqfor-you = allfor - yous.filter(el => {
        const duplicates = seen.has(el.for - you);
        seen.add(el.for - you);
        return !duplicates;
    })

    const filteredfor-you =[];
    uniqfor - yous.map(el => {
        filteredfor - yous.push(el.for - you);
    })

    try {
        res.json(uniqfor - yous);
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
}