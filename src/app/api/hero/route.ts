import { PrismaClient } from '@prisma/client'
import { type NextRequest, NextResponse } from 'next/server'

const prisma = new PrismaClient()

// eslint-disable-next-line @typescript-eslint/explicit-function-return-type
export const GET = async (req: NextRequest) => {
  const heroes = await prisma.hero.findMany({})
  return NextResponse.json({ heroes })
}
