import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

async function main() {

    const Jamelia = await prisma.first_names.update({
        where: {
            name : 'Bilbo',
        
        },
    })


  console.log(Jamelia)

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