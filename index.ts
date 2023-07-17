import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

async function main() {
    await prisma.first_names.create({
        data: {
            name: 'Bilbo',
            gender: 'M',
            race_id: 1
        },
    })

    const baggins = await prisma.first_names.findFirst({
        where: {
            name : 'Bilbo'
        },
    })


  console.log(baggins)

}

main()
  .then(async () => {
    await prisma.$disconnect()
  })
  .catch(async (e) => {
    console.error(e)
    await prisma.$disconnect()
    process.exit(1)
  })