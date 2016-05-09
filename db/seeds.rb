# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create({
  first_name: 'Mark',
  last_name: 'Wong',
  user_name: 'Hou-Tai Bowtie',
  email: 'mark@gmail.com',
  password: 'test',
  password_confirmation: 'test',
  address: '150 king street',
  phone_number: '416-555-6666'
  })


Tag.create({
  name: 'Spicy'
  })

Cuisine.create({
  name: 'Mexican'
  })

Picture.create({
  url: 'www.facebook.com',
  cuisine_id: Cuisine.find_by(name: 'Mexican').id,
  })

PicTag.create({
  picture_id: Picture.find_by(url: 'www.facebook.com').id,
  tag_id: Tag.find_by(name: 'Spicy').id

  })
