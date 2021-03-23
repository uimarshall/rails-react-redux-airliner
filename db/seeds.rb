# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

airlines = Airline.create([
    { 
        name: 'Blue Line',
        image_url: 'https://airliner.s3.eu-west-3.amazonaws.com/food-1.png'
    },
    { 
        name: 'Alaska Airlines',
        image_url: 'https://airliner.s3.eu-west-3.amazonaws.com/food-2.png'
    },
    { 
        name: 'SafeAir Airlines',
        image_url: 'https://airliner.s3.eu-west-3.amazonaws.com/food-3.png'
    },
    { 
        name: 'Boss Airlines',
        image_url: 'https://airliner.s3.eu-west-3.amazonaws.com/food-4.png'
    },
    { 
        name: 'TopFlight Airlines',
        image_url: 'https://airliner.s3.eu-west-3.amazonaws.com/food.png'
    },

    ])

reviews = Review.create([
    { 
        title: 'Good airline',
        description: 'I had a serene flight',
        score: 5,
        airline: airlines.first
    }, 
    { 
        title: 'Fair airline',
        description: 'It was tough and topsy flight',
        score: 3,
        airline: airlines.first
    }, 
    
    ])