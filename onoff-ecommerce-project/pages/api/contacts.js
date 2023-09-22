const { PrismaClient } = require('@prisma/client')

const prisma = new PrismaClient()

export default async function sendCustomer(req, res) {

    const name = req.body.enteredName;
    const phone = req.body.enteredPhone;
    const email = req.body.enteredEmail;
    const gender = ["male", "female"];

    try {
        await prisma.customer.create(
            {
                data: {
                    name: name,
                    age: Math.floor(Math.random() * (30 - 20 + 1)) + 20,
                    gender: gender[Math.floor(Math.random() * gender.length)],
                    tel: phone,
                    email: email,
                }
            }
        )
        res.status(200).json({ message: 'submitted succesfully' })
    }
    catch (error) {
        res.status(400).json({ error })
    }
}