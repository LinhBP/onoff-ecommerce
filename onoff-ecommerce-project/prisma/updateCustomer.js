const { PrismaClient } = require('@prisma/client')

const prisma = new PrismaClient()

async function updateCustomer(req, res) {
    await prisma.customer.update({
        where: {
            customerid: 4,
        },
        data: {
            name: "Kien",
            tel: "0988777626",
            email: "Kien@xin.com"
        }
    })
}

updateCustomer()
    .then(async () => {
        await prisma.$disconnect()
    })
    .catch(async (e) => {
        console.error(e)
        await prisma.$disconnect()
        process.exit(1)
    })