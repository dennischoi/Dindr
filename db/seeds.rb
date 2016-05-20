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

# Cuisines (13)

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

Cuisine.create({
  name: 'Middle Eastern'
  })

Cuisine.create({
  name: 'Caribbean'
  })

Cuisine.create({
  name: 'Steakhouse'
  })

Cuisine.create({
  name: 'Spanish'
  })
Cuisine.create({
  name: 'Modern European'
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

pic12 = Picture.create({
  remote_content_url: 'https://67.media.tumblr.com/54001de892896945a25cf30b5652c580/tumblr_o7g3z3fEzy1vv6hp0o1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Italian').id,
  })

pic12.tags<< pasta
pic12.tags<< savoury

pic13 = Picture.create({
  remote_content_url: 'https://66.media.tumblr.com/ed411c3dbd61c1cb214de8a737dec7a0/tumblr_o7g3w4rzJ71vv6hp0o1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Italian').id,
  })

pic13.tags<< seafood
pic13.tags<< fried

pic14 = Picture.create({
  remote_content_url: 'https://67.media.tumblr.com/5633cea87df17694a8435316e05af0be/tumblr_o7g3vtob991vv6hp0o1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Italian').id,
  })

pic14.tags<< pizza
pic14.tags<< comfort

pic15 = Picture.create({
  remote_content_url: 'https://65.media.tumblr.com/b1055baadf41d5ab98bf0ae5c2a8dcf0/tumblr_o7g3vkK0wZ1vv6hp0o1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Italian').id,
  })

pic15.tags<< seafood
pic15.tags<< healthy


pic16 = Picture.create({
  remote_content_url: 'https://65.media.tumblr.com/63327657b9c63a85a4f89cbd4486d44f/tumblr_o7g3vcG0Jv1vv6hp0o1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Steakhouse').id,
  })

pic16.tags<< savoury
pic16.tags<< healthy




pic17 = Picture.create({
  remote_content_url: 'https://66.media.tumblr.com/a15ce0219e251436a8547ae01e05ad5a/tumblr_o54sx6Oi361sraj02o1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Chinese').id,
  })

pic17.tags<< fried
pic17.tags<< comfort

pic18 = Picture.create({
  remote_content_url: 'https://67.media.tumblr.com/69ec38dae2ae96787708f52aca009ac8/tumblr_o61hp1hran1sraj02o1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Japanese').id,
  })

pic18.tags<< soup
pic18.tags<< healthy

pic19 = Picture.create({
  remote_content_url: 'https://65.media.tumblr.com/0b575cd7b8ca43d264b9e85d73124eb7/tumblr_o725qr9jOs1sraj02o1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Chinese').id,
  })

pic19.tags<< soup
pic19.tags<< savoury

pic20 = Picture.create({
  remote_content_url: 'https://65.media.tumblr.com/db98367c630187c527c866dd020a4711/tumblr_o7fcmibuf61sraj02o1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Chinese').id,
  })

pic20.tags<< soup
pic20.tags<< savoury





pic21 = Picture.create({
  remote_content_url: 'https://67.media.tumblr.com/54d20bf88f0aedb2654102e924f75fd6/tumblr_np31a1l1n51sohhn2o1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Indian').id,
  })

pic21.tags<< spicy
pic21.tags<< comfort

pic22 = Picture.create({
  remote_content_url: 'https://65.media.tumblr.com/fd6ab249db67b864605aaa7a4f62b3c6/tumblr_o5m708A6Ba1qhpzwoo1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Indian').id,
  })

pic22.tags<< comfort
pic22.tags<< savoury



pic23 = Picture.create({
  remote_content_url: 'https://65.media.tumblr.com/2473a80ee3a63359511e36d9f436f3d7/tumblr_nkpcbgK0Mt1uorzrro1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Vegetarian').id,
  })

pic23.tags<< healthy
pic23.tags<< wraps

pic24 = Picture.create({
  remote_content_url: 'https://65.media.tumblr.com/8f85a7bd4bc2cb9c9ecfe521d05a04da/tumblr_nmp1mwEjdN1rzwv55o1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Caribbean').id,
  })

pic24.tags<< savoury
pic24.tags<< fried

pic25 = Picture.create({
  remote_content_url: 'https://65.media.tumblr.com/dd91abb5b92c1f0342ae3fb83a99ca75/tumblr_o6kjwu3VNb1th3yzyo1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'American').id,
  })

pic25.tags<< fried
pic25.tags<< cheap_eats


pic26 = Picture.create({
  remote_content_url: 'https://66.media.tumblr.com/b0a627af646494cdd796d17f435c7748/tumblr_o7g87owCid1vv6hp0o1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Vegetarian').id,
  })

pic26.tags<< healthy
pic26.tags<< vegan


pic27 = Picture.create({
  remote_content_url: 'https://66.media.tumblr.com/6d347bd2a697978684d86c03771f79c1/tumblr_o7g874wj161vv6hp0o1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Japanese').id,
  })

pic27.tags<< soup
pic27.tags<< comfort


pic28 = Picture.create({
  remote_content_url: 'https://67.media.tumblr.com/1b43475cff6288cbf4306f7edff3d944/tumblr_o7g86sRAKC1vv6hp0o1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Japanese').id,
  })

pic28.tags<< sushi


pic29 = Picture.create({
  remote_content_url: 'https://66.media.tumblr.com/9e540f64d364fb81f7cfdf12de5e120b/tumblr_o7g86hC67x1vv6hp0o1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Mediterranean').id,
  })

pic29.tags<< healthy
pic29.tags<< savoury


pic30 = Picture.create({
  remote_content_url: 'https://66.media.tumblr.com/9e540f64d364fb81f7cfdf12de5e120b/tumblr_o7g86hC67x1vv6hp0o1_540.jpg',
  cuisine_id: Cuisine.find_by(name: 'Mediterranean').id,
  })

pic30.tags<< healthy
pic30.tags<< savoury

pic31 = Picture.create({
  remote_content_url: 'http://67.media.tumblr.com/a9dadb64ce7e5bcebf8b07ee62b69401/tumblr_o7hjlxq7371vu96cko1_1280.jpg',
  cuisine_id: Cuisine.find_by(name: 'Italian').id,
  })

pic31.tags<< savoury
pic31.tags<< tapas

pic32 = Picture.create({
  remote_content_url: 'http://66.media.tumblr.com/430a1656e15d756d5d967f297777d584/tumblr_o7hjljGfe91vu96cko1_1280.png',
  cuisine_id: Cuisine.find_by(name: 'Sandwiches').id,
  })

pic32.tags<< comfort
pic32.tags<< cheap_eats

pic33 = Picture.create({
  remote_content_url: 'http://65.media.tumblr.com/2853e4b82fe5dedeaae35fbc9efbe77f/tumblr_o7hjk4mRnY1vu96cko1_1280.png',
  cuisine_id: Cuisine.find_by(name: 'Mediterranean').id,
  })

pic33.tags<< tapas

pic34 = Picture.create({
  remote_content_url: 'http://66.media.tumblr.com/541daecf937568442334337b53d049ee/tumblr_o7hjjnSeRt1vu96cko1_1280.png',
  cuisine_id: Cuisine.find_by(name: 'Spanish').id,
  })

pic34.tags<< spicy
pic34.tags<< seafood

pic35 = Picture.create({
  remote_content_url: 'http://67.media.tumblr.com/b5d8f0e77c87ad609496681b31d77739/tumblr_o7hjj6IWnr1vu96cko1_1280.jpg',
  cuisine_id: Cuisine.find_by(name: 'Steakhouse').id,
  })

pic35.tags<< meaty
pic35.tags<< savoury

pic36 = Picture.create({
  remote_content_url: 'http://67.media.tumblr.com/ad3338cffba23ed3b43f4aacd147a7b4/tumblr_o7hjigqN7w1vu96cko1_1280.png',
  cuisine_id: Cuisine.find_by(name: 'Mediterranean').id,
  })

pic36.tags<< tapas

pic37 = Picture.create({ **** perogies
  remote_content_url: 'http://67.media.tumblr.com/1367bf25ea71f0afd61e6476bcf18795/tumblr_o7hjgpBOTO1vu96cko1_1280.png',
  cuisine_id: Cuisine.find_by(name: 'Mediterranean').id,
  })

pic30.tags<< tapas
pic30.tags<< fried

pic38 = Picture.create({
  remote_content_url: 'http://67.media.tumblr.com/1b060ad209932753bed402714ed283fb/tumblr_o7hjdwqRv11vu96cko1_1280.png',
  cuisine_id: Cuisine.find_by(name: 'Vegetarian').id,
  })

pic38.tags<< salads
pic38.tags<< healthy

pic39 = Picture.create({
  remote_content_url: 'http://66.media.tumblr.com/dffcf571c9ea6220a5c3f30c3a6a15e5/tumblr_o7hjbaW74G1vu96cko1_1280.jpg',
  cuisine_id: Cuisine.find_by(name: 'Caribbean').id,
  })

pic39.tags<< seafood

pic40 = Picture.create({
  remote_content_url: 'http://67.media.tumblr.com/a9565a148455624604ac1c602e612a2f/tumblr_o7hjaqIODV1vu96cko1_1280.jpg',
  cuisine_id: Cuisine.find_by(name: 'Caribbean').id,
  })

pic40.tags<< soup
pic40.tags<< spicy





#Pic Tag Model
#
# PicTag.create({
#   picture_id: Picture.find_by(url: 'www.facebook.com').id,
#   tag_id: Tag.find_by(name: 'Spicy').id
#   })
