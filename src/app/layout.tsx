import type { Metadata } from 'next'
import * as React from 'react'
import './globals.css'
// import { Inter } from 'next/font/google'
import { ThemeProvider } from '@/components/theme-provider'
// import { cn } from '@/lib/utils'
// const inter = Inter({ subsets: ['latin'] })

export const metadata: Metadata = {
  title: 'Create Next App',
  description: 'Generated by create next app'
}

export default function RootLayout ({ children }: { children: React.ReactNode }): any {
  return (
    <>
      <html lang="en" suppressHydrationWarning>
        <head />
        <body>
          <ThemeProvider
            attribute="class"
            defaultTheme="system"
            enableSystem
            disableTransitionOnChange
          >
            {children}
          </ThemeProvider>
        </body>
      </html>
    </>
  )
}
