# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '565494044948.',
    category:      'chinese'
  },
  {
    name:         'Pizza East',
    address:      '56A Shotoemdnf St, London E1 6PQ',
    phone_number:  '565494044594',
    category:        'italian'
    },
  {
    name:         'Dijo',
    address:      '4 Bou St, London E5 7JE',
    phone_number:  '565494304948.',
    category:        'japanese'
  },
  {
    name:         'Lpetite',
    address:      '10 Height St, London E9 6PQ',
    phone_number:  '543494044948.',
    category:        'french'
  },

  {
    name:         'Jaime',
    address:      '80 John St, London E8 6PQ',
    phone_number:  '565412044948.',
    category:        'belgian'
  }

]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
