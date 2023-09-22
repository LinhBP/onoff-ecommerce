const { PrismaClient } = require('@prisma/client')

const prisma = new PrismaClient()

export default async function sendBill(req, res) {

    const totalPrice = req.body.price;
    let today = new Date()

    try {
        let currentid = await prisma.$queryRaw`SELECT customerid FROM customer ORDER BY customerid DESC
        LIMIT 1`

        const id = currentid[0].customerid;

        console.log(id);

        // await prisma.$queryRaw`INSERT INTO bill (date, totalprice, customerid) VALUES (${today}, ${totalPrice}, ${id})`
        await prisma.bill.create({
            data: {
                customerid: id,
                date: today,
                totalprice: totalPrice,
            }
        })
        res.status(200).json({ message: 'bill created succesfully' })
    }
    catch (error) {
        res.status(400).json({ error })
    }
}