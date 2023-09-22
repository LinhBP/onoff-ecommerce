const { PrismaClient } = require('@prisma/client')

const prisma = new PrismaClient()

export default async function getAllBrands(req, res) {
    const allBrands = await prisma.shoes.findMany({
        select: {
            brand: true
        }
    })

    const seen = new Set();

    const uniqBrands = allBrands.filter(el => {
        const duplicates = seen.has(el.brand);
        seen.add(el.brand);
        return !duplicates;
    })

    const filteredBrands = [];
    uniqBrands.map(el => {
        filteredBrands.push(el.brand);
    })

    try {
        res.json(uniqBrands);
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
}