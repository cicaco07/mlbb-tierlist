import { type NextRequest, NextResponse } from 'next/server'

// eslint-disable-next-line @typescript-eslint/explicit-function-return-type
export const GET = async (req: NextRequest) => {
  return NextResponse.json({ message: 'hello world' })
}
