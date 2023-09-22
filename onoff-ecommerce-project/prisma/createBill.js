const { PrismaClient } = require('@prisma/client')

const prisma = new PrismaClient()

async function createBill(req, res) {
    const totalPrice = 100;
    let today = new Date()

    const currentid = await prisma.$queryRaw`SELECT customerid FROM customer ORDER BY customerid DESC
    LIMIT 1`

    console.log(currentid[0].customerid);

    res = currentid[0].customerid;

    await prisma.$queryRaw`INSERT INTO bill (date, totalprice, customerid) VALUES (${today}, ${totalPrice}, 
        ${res})`
}

createBill()
    .then(async () => {
        await prisma.$disconnect()
    })
    .catch(async (e) => {
        console.error(e)
        await prisma.$disconnect()
        process.exit(1)
    })