import { ModeToggle } from './toggle'
import * as React from 'react'

// eslint-disable-next-line @typescript-eslint/explicit-function-return-type
const getHeroes = async () => {
  const res = await fetch(process.env.BASE_URL + '/api/hero', { next: { revalidate: 0 } })
  const json = await res.json()
  return json
}

export default async function Home (): Promise<JSX.Element> {
  const heroes = await getHeroes()

  return (
    <>
      <div className="">
        {heroes?.heroes?.map((hero: any, index: number) => (
          <div key={index} className="">
            <h2>Id: {hero.id}</h2>
            <h2>Name: {hero.name}</h2>
            <h2>Role: {hero.role}</h2>
            <h2>Primary Type: {hero.primary_type}</h2>
            <h2>Secondary Type: {hero.secondary_type}</h2>
          </div>
        ))}
      </div>
      <div className="fixed bottom-6 right-6">
          <ModeToggle></ModeToggle>
      </div>
    </>
  )
}
