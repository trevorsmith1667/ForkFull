# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require 'open-uri'
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all 
Restaurant.delete_all

 users = [
   { username: 'demo_user',
    email: 'demo_user@gmail.com',
    password: '123456'
   }
 ]
 User.create!(users)

 rest1 = Restaurant.create!(
  name: 'Acquerello',
  about: 'Since 1989 Acquerello has raised the bar in San Francisco for Italian fine dining. In the Nob Hill region of the city,  this two Michelin starred restaurant continually delivers refined luxury and contemporary Italian tastes.',
  city: 'San Francisco',
  state: 'CA',
  cuisine: 'Italian',
  price: '$$$',
  phone_number: '(415) 567-5432',
  address: '1722 Sacramento St. San Francisco, CA 94109'

 )
 p1 = URI.open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/acq1.png')
 p2 = URI.open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/acq2.png')
 p3 = URI.open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/acq3.png')
 p4 = URI.open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/acq4.png')

 rest1.photos.attach(io: p1, filename: 'acq1.png')
 rest1.photos.attach(io: p2, filename: 'acq2.png')
 rest1.photos.attach(io: p3, filename: 'acq3.png')
 rest1.photos.attach(io: p4, filename: 'acq4.png')

 rest2 = Restaurant.create!(

  name: 'Atelier Crenn',
  about:  'Dominique Crenn  is the visionary behind the inspired tasting menu concept, based on the incorporation of Poetic Culinaria.  Chef Crenn’s imaginative artistry and distinctive French heritage are reflected in every bite.',
  city: 'San Francisco',
  state: 'California',
  cuisine: 'French', 
  price: '$$$$',
  phone_number: '(415) 440-0460',
  address: '3127 Fillmore St, San Francisco, CA 94123',
 )

 p5 = URI.open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/atelier1.png')
 p6 = URI.open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/aterlier2.png')
 p7 = URI.open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/atelier3.png')

 rest2.photos.attach(io: p5, filename: 'atelier1.png')
 rest2.photos.attach(io: p6, filename: 'aterlier2.png')
 rest2.photos.attach(io: p7, filename: 'atelier3.png')

 rest3 = Restaurant.create!(
  name: 'Benu',
  about: 'Opened in 2010, Benu is the pinnacle of approachable fine dining. A nuanced menu blends culinary traditions ranging from Korean to Cantonese, using local produce and western technique. The result is a perfect amalgamation of influence inherent to modern American cuisine.',
  city: 'San Francisco',
  state: 'California',
  cuisine: 'Modern American',
  price: '$$$$',
  phone_number: '(415)685-4860',
  address: '22 Hawthorne Street San Francisco CA 94105'
 )

#  p8 = URI.open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/benu1.png')
#  p9 = URI.open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/benu2.png')

 rest4 = Restaurant.create!(
  name: 'Cala', 
  about: 'Sustainably sourced Mexican seafood from esteemed Mexico city chef Gabriela Cámara.',
  city: 'San Francisco',
  state: 'California',
  cuisine: 'Mexican',
  price: '$$$',
  phone_number: '(415)660-7701',
  address: '149 Fell St, San Francisco, CA 94102',

 )

 rest5 = Restaurant.create!(
  name: 'Californios', 
  about: 'Californios is a family owned and operated California Mexican restaurant. The cuisine is a contemporary expression of Mexican cuisine, utilizing the plentiful local ingredients of the Bay Area. Chef Val M. Cantu and co. have created a one of a kind tasting menu and the wine team  makes the perfect complement.',
  city: 'San Francisco',
  state: 'California',
  cuisine: 'Mexican',
  price: '$$$$',
  phone_number: '(415)-757-0994',
  address: '355 11th Street, San Francisco, CA, 94102'

 )

rest6 = Restaurant.create!(
  name: 'Hashiri', 
  about: 'hashiri stays true to the roots of its original location in Tokyo, along the way curating a bounty of seasonal ingredients and traditional methods.',
  city: 'San Francisco',
  state: 'California',
  cuisine: 'Japanese', 
  price: '$$$',
  phone_number: '(415)-908-1919',
  address: '4 Mint Plaza San Francisco, CA, 94102'
)

rest7 = Restaurant.create!(
  name: 'Lazy Bear', 
  about: 'Lazy Bear keeps the focus away from the conventional while holding a special place for wild techniques, serving modern American creations and  delivering a essential dining experience. With its communal dining and social atmosphere, Lazy Bear is one of a kind.',
  city: 'San Francisco',
  state: 'California',
  cuisine: 'Modern American',
  price: '$$$',
  phone_number: '(415)-874-9921',
  address: '3416 19th St, San Francisco, CA 94110'
)

rest8 = Restaurant.create!(
  name: 'Mission Chinese', 
  about: 'Here is the original brainchild of  Chef Danny Bowien who delivers his spicy, creative takes on a twist between American  and Chinese cuisine. The menu showcases an awe inspiring
  blend of Sichuan heat and spice, served  in a casual relaxed space.',
  city: 'San Francisco',
  state: 'California',
  cuisine: 'Chinese',
  price: '$$',
  phone_number: "(415)863-2800",
  address: '2234 Mission Street, San Francisco, CA'

)

rest9 = Restaurant.create!(
  name: 'Ju Ni',
  about: 'Ju Ni is a small cozy 12 seat omakase bar in downtown San Francisco combining technique and tradition. Every 4 guests gets a personal chef to handcraft a unique intimate dining experience.',
  city: 'San Francisco', 
  state: 'California',
  cuisine: 'Japanese',
  price: '$$$',
  phone_number: '(415)655-9924',
  address: '1335 Fulton Street, San Francisco, CA'

)

rest10 = Restaurant.create!(
  name: 'Trestle SF',
  about: 'Trestle SF is an affordable fine dining tasting menu experience that marries fresh seasonal ingredients with a new menu every day.',
  city: 'San Francisco',
  state: 'California',
  cuisine: 'Modern American',
  price: '$$',
  phone_number: "(415)772-0922",
  address: '555 California Street Concourse Level, San Francisco, CA'


)