import React, { useState, useEffect } from 'react'
import axios from 'axios'

const Dog = (props) => {
  const [dog, setDog] = useState({})
  const [review, setReview] = useState({})

  useEffect(() => {
    const slug = props.match.params.slug
    
    axios.get(`/api/v1/dogs/${slug}`)
    .then( resp => console.log(resp))
    .catch( resp => console.log(resp))
  }, [])

  return (
    <div>
      this is the dog#show
    </div>
  )
}

export default Dog
