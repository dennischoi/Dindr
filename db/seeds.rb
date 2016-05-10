# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Cuisine.destroy_all
Tag.destroy_all
Picture.destroy_all

# Users
User.create({
  first_name: 'Mark',
  last_name: 'Wong',
  user_name: 'Hou-Tai Bowtie',
  email: 'mark@gmail.com',
  password: 'test',
  password_confirmation: 'test',
  address: '150 king street',
  phone_number: '416-555-6666',
  admin: true
  })

# Cuisines (10)

Cuisine.create({
  name: 'Mexican'
  })

Cuisine.create({
  name: 'Thai'
  })

Cuisine.create({
  name: 'Japanese'
  })

Cuisine.create({
  name: 'Italian'
  })

Cuisine.create({
  name: 'Chinese'
  })

Cuisine.create({
  name: 'American'
  })

Cuisine.create({
  name: 'Vegetarian'
  })

Cuisine.create({
  name: 'Indian'
  })

Cuisine.create({
  name: 'Sandwiches'
  })

Cuisine.create({
  name: 'Mediterranean'
  })


# Tags (8)

spicy = Tag.create({
  name: 'Spicy'
  })

comfort = Tag.create({
  name: 'Comfort'
  })

dessert = Tag.create({
  name: 'Dessert'
  })

healthy = Tag.create({
  name: 'Healthy'
  })

vegan = Tag.create({
  name: 'Vegan'
  })

sweet = Tag.create({
  name: 'Sweet'
  })

savoury = Tag.create({
  name: 'Savoury'
  })

fried = Tag.create({
  name: 'Fried'
  })


#Pictures
pic1 = Picture.create({
 url: 'http://67.media.tumblr.com/313372d1546e17024d705ad659af4fb9/tumblr_o6z57vzs161vu96cko1_540.png',
 cuisine_id: Cuisine.find_by(name: 'Mexican').id,
 })

pic1.tags<< spicy

pic2 = Picture.create({
 url: 'http://66.media.tumblr.com/49f042169878563220868da8a8310d16/tumblr_o6z5v2Fehr1vu96cko1_1280.png',
 cuisine_id: Cuisine.find_by(name: 'Japanese').id,
 })

pic2.tags<< healthy

pic3 = Picture.create({
 url: 'http://66.media.tumblr.com/dce796f731a59d6793e3d9a297510cf5/tumblr_o6z5umdmAo1vu96cko1_540.png',
 cuisine_id: Cuisine.find_by(name: 'Italian').id,
 })

pic3.tags<< comfort
pic3.tags<< savoury

pic4 = Picture.create({
 url: 'http://66.media.tumblr.com/e06e478dbef61cafe6fc1fb6181aab71/tumblr_o6z5u5SheS1vu96cko1_540.png',
 cuisine_id: Cuisine.find_by(name: 'Vegetarian').id,
 })

pic4.tags<< healthy
pic4.tags<< vegan

pic5 = Picture.create({
 url: 'http://66.media.tumblr.com/d81cc03b2d461ed2665f1903b2a646ec/tumblr_o6ywc8MNPD1vu96cko1_1280.jpg',
 cuisine_id: Cuisine.find_by(name: 'Thai').id,
 })

pic5.tags<< spicy
pic5.tags<< savoury

pic6 = Picture.create({
 url: 'http://67.media.tumblr.com/2b2979d4d97d22236f4331f0eef07f45/tumblr_o6ywbmw2kt1vu96cko1_1280.jpg',
 cuisine_id: Cuisine.find_by(name: 'Sandwiches').id,
 })

pic6.tags<< spicy
pic6.tags<< fried



#Pic Tag Model
#
# PicTag.create({
#   picture_id: Picture.find_by(url: 'www.facebook.com').id,
#   tag_id: Tag.find_by(name: 'Spicy').id
#   })
