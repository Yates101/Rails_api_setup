import React from 'react'
import { Route, Switch } from 'react-router-dom'
import Dogs from './Dogs/Dogs'
import Dog from './Dog/Dog'

const app = () => {
  return (
    <Switch>
      <Route exact path="/" component={Dogs} />
      <Route exact path="/dogs/:slug" component={Dog} />
    </Switch>
  )
}

export default app
