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




  pic1 = Picture.create({
   url: 'http://dindrdindr.tumblr.com/post/144157977763',
   cuisine_id: Cuisine.find_by(name: 'Mexican').id,
   })

  pic1.tags<< spicy

  pic2 = Picture.create({
   url: 'http://dindrdindr.tumblr.com/post/144158550578',
   cuisine_id: Cuisine.find_by(name: 'Japanese').id,
   })

  pic2.tags<< healthy

  pic3 = Picture.create({
   url: 'http://dindrdindr.tumblr.com/post/144158539958',
   cuisine_id: Cuisine.find_by(name: 'Italian').id,
   })

  pic3.tags<< comfort
  pic3.tags<< savoury

  pic4 = Picture.create({
   url: 'http://dindrdindr.tumblr.com/post/144158527628',
   cuisine_id: Cuisine.find_by(name: 'Vegetarian').id,
   })

  pic4.tags<< healthy
  pic4.tags<< vegan

  pic5 = Picture.create({
   url: 'http://dindrdindr.tumblr.com/post/144150649803',
   cuisine_id: Cuisine.find_by(name: 'Thai').id,
   })

  pic5.tags<< spicy
  pic5.tags<< savoury

  pic6 = Picture.create({
   url: 'http://dindrdindr.tumblr.com/post/144150635748',
   cuisine_id: Cuisine.find_by(name: 'Sandwiches').id,
   })

  pic6.tags<< spicy
  pic6.tags<< fried
