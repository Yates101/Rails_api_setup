# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

dogs = Dog.create([
  {
    name: "Alsation",
    image_url: "https://i.pinimg.com/originals/b4/f2/c9/b4f2c902c840ade98240fa3a0a04010d.jpg"
  },
  {
    name: "Labrador",
    image_url: "https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2019/03/19142606/AdobeStock_491912561-800x600.jpeg"
  },
  {
    name: "Husky",
    image_url: "https://cdn.shopify.com/s/files/1/0994/0236/articles/siberian-husky.jpg?v=1502391918"
  },
  {
    name: "Dalmation",
    image_url: "https://dogtime.com/assets/uploads/gallery/dalmatian-dog-breed-pictures/10-water.jpg"
  },
  {
    name: "Labradoodle",
    image_url: "https://dogtime.com/assets/uploads/gallery/labradoodle-dog-breed-pictures/side-1.jpg"
  },
  {
    name: "Australian Shepherd",
    image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F47%2F2020%2F08%2F15%2Faustralian-shepherd-full-body-635701178-2000.jpg"
  }
])

reviews = Review.create([
  {
    title: "Fantastic Pupper",
    description: "Truly wonderful doggos.",
    score: 5,
    dog: dogs.first
  },
  {
    title: "Terifying.",
    description: "Chased me when I was selling one drug. Pretty fast tbf.",
    score: 2,
    dog: dogs.first
  }
])