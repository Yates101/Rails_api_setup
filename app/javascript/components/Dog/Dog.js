import React, { useState, useEffect } from 'react'
import axios from 'axios'

const Dog = (props) => {
  const [dog, setDog] = useState({})
  const [review, setReview] = useState({})

  useEffect(() => {
    const slug = props.match.params.slug
    const url = `api/v1/dogs/${slug}`
    
    axios.get(url)
    .then( resp => console.log(resp))
    .catch( resp => console.log(resp))
  }, [])

  return (
    <div>
      This is the Dogs#show view for out app.
    </div>
  )
}

export default Dog
