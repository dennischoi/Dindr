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
  age: 23,
  admin: true,
  remote_profile_pic_url: 'https://66.media.tumblr.com/bbe794936454be70eb8c1f48afe3dced/tumblr_o7pqmigQno1tf5wtuo1_540.jpg'
  })

# New Users

User.create({
  first_name: 'Brad',
  last_name: 'Pitt',
  user_name: 'Hottie1',
  email: 'brad@gmail.com',
  password: 'test',
  password_confirmation: 'test',
  address: '150 king street',
  phone_number: '416-323-3333',
  age: 33,
  remote_profile_pic_url: 'https://66.media.tumblr.com/e83d081af4d305d1fe2a51c260038135/tumblr_o76kljMPQq1sfnn0mo1_r1_540.jpg',
})

User.create({
  first_name: 'Tom',
  last_name: 'Hardy',
  user_name: 'Hottie2',
  email: 'tom@gmail.com',
  password: 'test',
  password_confirmation: 'test',
  address: '150 king street',
  phone_number: '416-555-6666',
  age: 32,
  remote_profile_pic_url: 'https://67.media.tumblr.com/3eb2baa415f5c6284ef4c3a2c871cdf0/tumblr_o7pa7hHnmR1v5kw6jo1_400.jpg'
  })

User.create({
  first_name: 'Rachel',
  last_name: 'McAdam',
  user_name: 'GirlHottie1',
  email: 'rachel@gmail.com',
  password: 'test',
  password_confirmation: 'test',
  address: '150 king street',
  phone_number: '416-555-6666',
  age: 26,
  remote_profile_pic_url: 'https://65.media.tumblr.com/fd15d919eb2cd9b53c8f39ceb0e20b11/tumblr_o7pyoimb0p1unmtsfo1_540.jpg'
  })

User.create({
  first_name: 'Alicia',
  last_name: 'Vikander',
  user_name: 'GirlHottie2',
  email: 'alicia@gmail.com',
  password: 'test',
  password_confirmation: 'test',
  address: '150 king street',
  phone_number: '416-555-6666',
  age: 28,
  remote_profile_pic_url: 'https://67.media.tumblr.com/48f1c32b27df3645b8640e268a7498e4/tumblr_o77sjwTSLh1ufirt1o1_400.jpg'
  })

# Invitation.create({
#   date: '12-1-2016',
#   send_user_id: User.find_by(first_name: 'Mark').id,
#   accept_user_id: User.find_by(first_name: 'Kim').id
# })

# Cuisines (13)

Cuisine.create({
  name: 'Mexican',
  label: 'mexican'
  })

Cuisine.create({
  name: 'Thai',
  label: 'thai'
  })

Cuisine.create({
  name: 'Japanese',
  label: 'japanese'
  })

Cuisine.create({
  name: 'Italian',
  label: 'italian'
  })

Cuisine.create({
  name: 'Chinese',
  label: 'chinese'
  })

Cuisine.create({
  name: 'American',
  label: 'newamerican'
  })

Cuisine.create({
  name: 'Vegetarian',
  label: 'vegetarian'
  })

Cuisine.create({
  name: 'Indian',
  label: 'indpak'
  })

Cuisine.create({
  name: 'Sandwiches',
  label: 'sandwiches'
  })

Cuisine.create({
  name: 'Mediterranean',
  label: 'mediterranean'
  })

Cuisine.create({
  name: 'Middle Eastern',
  label: 'mideastern'
  })

Cuisine.create({
  name: 'Caribbean',
  label: 'caribbean'

  })

Cuisine.create({
  name: 'Steakhouse',
  label: 'steak'
  })

Cuisine.create({
  name: 'Spanish',
  label: 'spanish'
  })
Cuisine.create({
  name: 'Modern European',
  label: 'modern_european'
  })

# Tags (18)

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

burgers = Tag.create({
  name: 'Burgers'
  })

sushi = Tag.create({
  name: 'Sushi'
  })

tacos = Tag.create({
  name: 'Tacos'
  })

burritos = Tag.create({
  name: 'Burritos'
  })

cheap_eats = Tag.create({
  name: 'Cheap Eats'
  })

wraps = Tag.create({
  name: 'Wraps'
  })

salads = Tag.create({
  name: 'Salads'
  })

tapas = Tag.create({
  name: 'Tapas'
  })

soup = Tag.create({
  name: 'Soup'
  })

seafood = Tag.create({
  name: 'Seafood'
})

pizza = Tag.create({
  name: 'Pizza'
})

pasta = Tag.create({
  name: 'Pasta'
})

vegetarian = Tag.create({
  name: 'Vegetarian'
})

meaty = Tag.create({
  name: 'Meaty'
})



#Pictures
pic1 = Picture.create({
 remote_content_url: 'http://67.media.tumblr.com/313372d1546e17024d705ad659af4fb9/tumblr_o6z57vzs161vu96cko1_540.png',
 cuisine_id: Cuisine.find_by(name: 'Mexican').id,
 })

pic1.tags<< spicy

pic2 = Picture.create({
 remote_content_url: 'http://66.media.tumblr.com/49f042169878563220868da8a8310d16/tumblr_o6z5v2Fehr1vu96cko1_1280.png',
 cuisine_id: Cuisine.find_by(name: 'Japanese').id,
 })

pic2.tags<< healthy

pic3 = Picture.create({
 remote_content_url: 'http://66.media.tumblr.com/dce796f731a59d6793e3d9a297510cf5/tumblr_o6z5umdmAo1vu96cko1_540.png',
 cuisine_id: Cuisine.find_by(name: 'Italian').id,
 })

pic3.tags<< comfort
pic3.tags<< savoury
pic3.tags<< pizza

pic4 = Picture.create({
 remote_content_url: 'http://66.media.tumblr.com/e06e478dbef61cafe6fc1fb6181aab71/tumblr_o6z5u5SheS1vu96cko1_540.png',
 cuisine_id: Cuisine.find_by(name: 'Vegetarian').id,
 })

pic4.tags<< healthy
pic4.tags<< vegan

pic5 = Picture.create({
 remote_content_url: 'http://66.media.tumblr.com/d81cc03b2d461ed2665f1903b2a646ec/tumblr_o6ywc8MNPD1vu96cko1_1280.jpg',
 cuisine_id: Cuisine.find_by(name: 'Thai').id,
 })

pic5.tags<< spicy
pic5.tags<< savoury

pic6 = Picture.create({
 remote_content_url: 'http://67.media.tumblr.com/2b2979d4d97d22236f4331f0eef07f45/tumblr_o6ywbmw2kt1vu96cko1_1280.jpg',
 cuisine_id: Cuisine.find_by(name: 'Sandwiches').id,
 })

pic6.tags<< spicy
pic6.tags<< fried

# testing seeding new pictures

pic7 = Picture.create({
 remote_content_url: 'http://65.media.tumblr.com/06f6bc7aa949dca83196b308bc958d6c/tumblr_o6ywby7ADQ1vu96cko1_1280.jpg',
 cuisine_id: Cuisine.find_by(name: 'Mexican').id,
 })

pic7.tags<< spicy
pic7.tags<< burritos


pic8 = Picture.create({
 remote_content_url: 'http://67.media.tumblr.com/a11aec87be80bf624fec6268014dba89/tumblr_o6ywbaGi1r1vu96cko1_1280.jpg',
 cuisine_id: Cuisine.find_by(name: 'American').id,
 })

 pic8.tags<< burgers
 pic8.tags<< cheap_eats

# breakpoint

pic9 = Picture.create({
  remote_content_url: 'https://67.media.tumblr.com/2c90fced56f3aa1e35288f2277dd9dc5/tumblr_o7g3zmFK791vv6hp0o1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Thai').id,
  })

pic9.tags<< soup
pic9.tags<< spicy

pic10 = Picture.create({
  remote_content_url: 'https://67.media.tumblr.com/a9e394f1eb6b0ec8502ecbc97b720a97/tumblr_o7g3zdkDTS1vv6hp0o1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Japanese').id,
  })

pic10.tags<< salads
pic10.tags<< healthy

pic11 = Picture.create({
  remote_content_url: 'https://67.media.tumblr.com/54001de892896945a25cf30b5652c580/tumblr_o7g3z3fEzy1vv6hp0o1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Italian').id,
  })

pic11.tags<< pasta
pic11.tags<< comfort
pic11.tags<< savoury


pic12 = Picture.create({
  remote_content_url: 'https://66.media.tumblr.com/ed411c3dbd61c1cb214de8a737dec7a0/tumblr_o7g3w4rzJ71vv6hp0o1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Italian').id,
  })

pic12.tags<< seafood
pic12.tags<< fried

pic13 = Picture.create({
  remote_content_url: 'https://67.media.tumblr.com/5633cea87df17694a8435316e05af0be/tumblr_o7g3vtob991vv6hp0o1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Italian').id,
  })

pic13.tags<< pizza
pic13.tags<< comfort

pic14 = Picture.create({
  remote_content_url: 'https://65.media.tumblr.com/b1055baadf41d5ab98bf0ae5c2a8dcf0/tumblr_o7g3vkK0wZ1vv6hp0o1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Italian').id,
  })

pic14.tags<< seafood
pic14.tags<< healthy


pic15 = Picture.create({
  remote_content_url: 'https://65.media.tumblr.com/63327657b9c63a85a4f89cbd4486d44f/tumblr_o7g3vcG0Jv1vv6hp0o1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Steakhouse').id,
  })

pic15.tags<< savoury
pic15.tags<< healthy




pic16 = Picture.create({
  remote_content_url: 'https://66.media.tumblr.com/a15ce0219e251436a8547ae01e05ad5a/tumblr_o54sx6Oi361sraj02o1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Chinese').id,
  })

pic16.tags<< fried
pic16.tags<< comfort

pic17 = Picture.create({
  remote_content_url: 'https://67.media.tumblr.com/69ec38dae2ae96787708f52aca009ac8/tumblr_o61hp1hran1sraj02o1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Japanese').id,
  })

pic17.tags<< soup
pic17.tags<< healthy

pic18 = Picture.create({
  remote_content_url: 'https://65.media.tumblr.com/0b575cd7b8ca43d264b9e85d73124eb7/tumblr_o725qr9jOs1sraj02o1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Chinese').id,
  })

pic18.tags<< soup
pic18.tags<< savoury

pic19 = Picture.create({
  remote_content_url: 'https://65.media.tumblr.com/db98367c630187c527c866dd019a4711/tumblr_o7fcmibuf61sraj02o1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Chinese').id,
  })

pic19.tags<< soup
pic19.tags<< savoury





pic20 = Picture.create({
  remote_content_url: 'https://67.media.tumblr.com/54d20bf88f0aedb2654102e924f75fd6/tumblr_np31a1l1n51sohhn2o1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Indian').id,
  })

pic20.tags<< spicy
pic20.tags<< comfort

pic21 = Picture.create({
  remote_content_url: 'https://65.media.tumblr.com/fd6ab249db67b864605aaa7a4f62b3c6/tumblr_o5m708A6Ba1qhpzwoo1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Indian').id,
  })

pic21.tags<< comfort
pic21.tags<< savoury



pic22 = Picture.create({
  remote_content_url: 'https://65.media.tumblr.com/2473a80ee3a63359511e36d9f436f3d7/tumblr_nkpcbgK0Mt1uorzrro1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Vegetarian').id,
  })

pic22.tags<< healthy
pic22.tags<< wraps

pic23 = Picture.create({
  remote_content_url: 'https://65.media.tumblr.com/8f85a7bd4bc2cb9c9ecfe521d05a04da/tumblr_nmp1mwEjdN1rzwv55o1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Caribbean').id,
  })

pic23.tags<< savoury
pic23.tags<< fried

pic24 = Picture.create({
  remote_content_url: 'https://65.media.tumblr.com/dd91abb5b92c1f0342ae3fb83a99ca75/tumblr_o6kjwu3VNb1th3yzyo1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'American').id,
  })

pic24.tags<< fried
pic24.tags<< cheap_eats


pic25 = Picture.create({
  remote_content_url: 'https://66.media.tumblr.com/b0a627af646494cdd796d17f435c7748/tumblr_o7g87owCid1vv6hp0o1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Vegetarian').id,
  })

pic25.tags<< healthy
pic25.tags<< vegan


pic26 = Picture.create({
  remote_content_url: 'https://66.media.tumblr.com/6d347bd2a697978684d86c03771f79c1/tumblr_o7g874wj161vv6hp0o1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Japanese').id,
  })

pic26.tags<< soup
pic26.tags<< comfort


pic27 = Picture.create({
  remote_content_url: 'https://67.media.tumblr.com/1b43475cff6278cbf4306f7edff3d944/tumblr_o7g86sRAKC1vv6hp0o1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Japanese').id,
  })

pic27.tags<< sushi


pic28 = Picture.create({
  remote_content_url: 'https://66.media.tumblr.com/9e540f64d364fb81f7cfdf12de5e120b/tumblr_o7g86hC67x1vv6hp0o1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Mediterranean').id,
  })

pic28.tags<< healthy
pic28.tags<< savoury



pic29 = Picture.create({
  remote_content_url: 'http://67.media.tumblr.com/a9dadb64ce7e5bcebf8b07ee62b69401/tumblr_o7hjlxq7371vu96cko1_1280.jpg',
  cuisine_id: Cuisine.find_by(name: 'Italian').id,
  })

pic29.tags<< savoury
pic29.tags<< tapas

pic30 = Picture.create({
  remote_content_url: 'http://66.media.tumblr.com/430a1656e15d756d5d967f297777d584/tumblr_o7hjljGfe91vu96cko1_1280.png',
  cuisine_id: Cuisine.find_by(name: 'Sandwiches').id,
  })

pic30.tags<< comfort
pic30.tags<< cheap_eats

pic31 = Picture.create({
  remote_content_url: 'http://65.media.tumblr.com/2853e4b82fe5dedeaae35fbc9efbe77f/tumblr_o7hjk4mRnY1vu96cko1_1280.png',
  cuisine_id: Cuisine.find_by(name: 'Mediterranean').id,
  })

pic31.tags<< tapas

pic32 = Picture.create({
  remote_content_url: 'http://66.media.tumblr.com/541daecf937568442332337b53d049ee/tumblr_o7hjjnSeRt1vu96cko1_1280.png',
  cuisine_id: Cuisine.find_by(name: 'Spanish').id,
  })

pic32.tags<< spicy
pic32.tags<< seafood

pic33 = Picture.create({
  remote_content_url: 'http://67.media.tumblr.com/b5d8f0e77c87ad609496681b31d77739/tumblr_o7hjj6IWnr1vu96cko1_1280.jpg',
  cuisine_id: Cuisine.find_by(name: 'Steakhouse').id,
  })

pic33.tags<< meaty
pic33.tags<< savoury

pic34 = Picture.create({
  remote_content_url: 'http://67.media.tumblr.com/ad3338cffba23ed3b43f4aacd147a7b4/tumblr_o7hjigqN7w1vu96cko1_1280.png',
  cuisine_id: Cuisine.find_by(name: 'Mediterranean').id,
  })

pic34.tags<< tapas

pic35 = Picture.create({
  remote_content_url: 'http://67.media.tumblr.com/1367bf25ea71f0afd61e6476bcf18795/tumblr_o7hjgpBOTO1vu96cko1_1280.png',
  cuisine_id: Cuisine.find_by(name: 'Mediterranean').id,
  })


pic35.tags<< tapas
pic35.tags<< fried


pic36 = Picture.create({
  remote_content_url: 'http://67.media.tumblr.com/1b060ad209932753bed402714ed283fb/tumblr_o7hjdwqRv11vu96cko1_1280.png',
  cuisine_id: Cuisine.find_by(name: 'Vegetarian').id,
  })

pic36.tags<< salads
pic36.tags<< healthy

pic37 = Picture.create({
  remote_content_url: 'http://66.media.tumblr.com/dffcf571c9ea6220a5c3f30c3a6a15e5/tumblr_o7hjbaW74G1vu96cko1_1280.jpg',
  cuisine_id: Cuisine.find_by(name: 'Caribbean').id,
  })

pic37.tags<< seafood

pic38 = Picture.create({
  remote_content_url: 'http://67.media.tumblr.com/a9565a148455624604ac1c602e612a2f/tumblr_o7hjaqIODV1vu96cko1_1280.jpg',
  cuisine_id: Cuisine.find_by(name: 'Caribbean').id,
  })

pic38.tags<< soup
pic38.tags<< spicy





#Pic Tag Model
#
# PicTag.create({
#   picture_id: Picture.find_by(url: 'www.facebook.com').id,
#   tag_id: Tag.find_by(name: 'Spicy').id
#   })
