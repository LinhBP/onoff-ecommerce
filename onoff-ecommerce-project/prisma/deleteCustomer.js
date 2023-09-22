const { PrismaClient } = require('@prisma/client')

const prisma = new PrismaClient()

async function deleteCustomer(req, res) {
    await prisma.customer.delete({
        where: {
            customerid: 10,
        }
    })
}

deleteCustomer()
    .then(async () => {
        await prisma.$disconnect()
    })
    .catch(async (e) => {
        console.error(e)
        await prisma.$disconnect()
        process.exit(1)
    })