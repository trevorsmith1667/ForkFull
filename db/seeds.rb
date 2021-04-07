# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require "open-uri"
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all 
Restaurant.destroy_all
Reservation.destroy_all

 demo = User.create!( username: 'demo_user',
                      email: 'demo_user@gmail.com',
                      password: '123456')
 user1 = User.create!( username: 'foodieguy12', 
                       email: 'fooodguy@gmail.com', 
                       password: '123456')
 user2 = User.create!( username: 'jameojammer', 
                       email: 'jamjamjam@hotmail.com', 
                       password: '123456')
 user3 = User.create!( username: 'ethandelcarlo',
                       email: 'ethandel111@gmail.com',
                       password: '123456')
 user4 = User.create!( username: 'pizzamyheart',
                       email: 'pizzamyheart@gmail.com', 
                       password: '123456')
 user5 = User.create!( username: 'deadeyejedi',
                       email: 'deadeyejedi@gmail.com',
                       password: '123456')

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

 p1 = open("https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/acq1.png")
 p2 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/acq2.png')
 p3 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/acq3.png')
 p4 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/acq4.png')

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

 p5 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/atelier1.png')
 p6 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/aterlier2.png')
 p7 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/atelier3.png')

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

 p8 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/benu1.png')
 p9 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/benu2.png')
 p10 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/benu3.png')
 p11 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/benu4.png')

 rest3.photos.attach(io: p8, filename: 'benu1.png')
 rest3.photos.attach(io: p9, filename: 'benu2.png')
 rest3.photos.attach(io: p10, filename: 'benu3.png')
 rest3.photos.attach(io: p11, filename: 'benu4.png')

 rest4 = Restaurant.create!(
  name: 'Cala', 
  about: 'Sustainably sourced Mexican seafood from esteemed Mexico city chef Gabriela Cámara.',
  city: 'San Francisco',
  state: 'California',
  cuisine: 'Mexican',
  price: '$$$',
  phone_number: '(415)660-7701',
  address: '149 Fell St, San Francisco, CA 94102'
 )

 p12 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/cala1.png')
 p13 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/cala2.png')
 p14 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/cala3.png')
 p15 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/cala4.png')

 rest4.photos.attach(io: p12, filename: 'cala1.png')
 rest4.photos.attach(io: p13, filename: 'cala2.png')
 rest4.photos.attach(io: p14, filename: 'cala3.png')
 rest4.photos.attach(io: p15, filename: 'cala4.png')

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

 p16 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/cali1.png')
 p17 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/cala2.png')
 p18 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/cali3.png')
 p19 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/cali4.png')

 rest5.photos.attach(io: p16, filename: 'cali1.png')
 rest5.photos.attach(io: p17, filename: 'cali2.png')
 rest5.photos.attach(io: p18, filename: 'cali3.png')
 rest5.photos.attach(io: p19, filename: 'cali4.png')

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

p20 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/hashiri1.png')
p21 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/hashiri2.png')
p22 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/hashiri3.png')
p23 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/hashiri4.png')

rest6.photos.attach(io: p20, filename: 'hashiri1.png')
rest6.photos.attach(io: p21, filename: 'hashiri2.png')
rest6.photos.attach(io: p22, filename: 'hashiri3.png')
rest6.photos.attach(io: p23, filename: 'hashiri4.png')


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

p24 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/lazy-bear-1.png')
p25 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/lazy-bear-2.png')
p26 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/lazybear-4.png')
p27 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/lazybear-5.png')

rest7.photos.attach(io: p24, filename: 'lazy-bear-1.png')
rest7.photos.attach(io: p25, filename: 'lazy-bear-2.png')
rest7.photos.attach(io: p26, filename: 'lazybear-4.png')
rest7.photos.attach(io: p27, filename: 'lazybear-5.png')

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

p28 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/missc1.png')
p29 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/missc2.png')
p30 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/missc3.png')
p31 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/missc4.png')

rest8.photos.attach(io: p28, filename: 'missc1.png')
rest8.photos.attach(io: p29, filename: 'missc2.png')
rest8.photos.attach(io: p30, filename: 'missc3.png')
rest8.photos.attach(io: p31, filename: 'missc4.png')

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

p32 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/juni1.png')
p33 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/juni2.png')
p34 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/juni3.png')
p35 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/juni4.png')

rest9.photos.attach(io: p32, filename: 'juni1.png')
rest9.photos.attach(io: p33, filename: 'juni2.png')
rest9.photos.attach(io: p34, filename: 'juni3.png')
rest9.photos.attach(io: p35, filename: 'juni4.png')

rest10 = Restaurant.create!(
  name: 'Trestle SF',
  about: 'Trestle SF is an affordable fine dining tasting menu experience that marries fresh seasonal ingredients with a new menu every day.',
  city: 'San Francisco',
  state: 'California',
  cuisine: 'Modern American',
  price: '$$',
  phone_number: "(415)772-0922",
  address: '555 California Street Concourse Level, San Francisco, CA 94115' 
)

p36 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/trestle-1.png')
p37 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/trestle-2.png')
p38 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/trestle-3.png')
p39 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/trestle-5.png')
p40 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/trestle-6.png')

rest10.photos.attach(io: p36, filename: 'trestle-1.png')
rest10.photos.attach(io: p37, filename: 'trestle-2.png')
rest10.photos.attach(io: p38, filename: 'trestle-3.png')
rest10.photos.attach(io: p39, filename: 'trestle-5.png')
rest10.photos.attach(io: p40, filename: 'trestle-6.png')

rest11 = Restaurant.create!(
  name: "Sorrel",
  about: "Sorrel offers an authentically californian take on rustic Italian fare. Combining seasonal produce and foraged products from our rooftop garden we seek to deliver a soulful, unforgettable dining experience. ", 
  city: "San Francisco",
  state: 'California', 
  cuisine: "Italian", 
  price: "$$$", 
  phone_number: "(415) 525-3765",
  address: "3228 Sacramento Street, San Francisco, CA 94115"
)

p41 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/sorrel1.png')
p42 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/sorrel2.png')
p43 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/sorrel3.png')
p44 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/sorrel4+3.png')

rest11.photos.attach(io: p41, filename: 'sorrel1.png')
rest11.photos.attach(io: p42, filename: 'sorrel2.png')
rest11.photos.attach(io: p43, filename: 'sorrel3.png')
rest11.photos.attach(io: p44, filename: 'sorrel4+3.png')

rest12 = Restaurant.create!(
  name: "Quince", 
  about: "Positioned in Jackson Square, Chef Michael Tusk's renowned resturaunt Quince brings beautiful tasting menus of contemporary modern Californian cuisine to new heights. Working exclusively with Fresh Run Farm located only an hour away in Bolinas CA, the nightly changing options sing with the freshness and quality of the regions choice ingredients.", 
  city: "San Francisco", 
  state: "California", 
  cuisine: "Modern Californian",
  price: "$$$$", 
  address: "470 Pacific Avenue, San Francisco, CA 94133", 
  phone_number: "(415)-775-8500"
)

p45 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/quince1.png')
p46 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/quince2.png')
p47 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/quince3.png')

rest12.photos.attach(io: p45, filename: 'quince1.png')
rest12.photos.attach(io: p46, filename: 'quince2.png')
rest12.photos.attach(io: p47, filename: 'quince3.png')

rest13 = Restaurant.create!(
  name: "Nopa", 
  about: "Specializing in wood fired offerings, we craft simple organic dishes brought to life from the collaborative inspiration of our kitchen team. Nopa works with local purveyors to highlight the best of modern Californian cuisine.", 
  city: "San Francisco", 
  state: 'California',
  cuisine: "Modern Californian",
  price: "$$", 
  address: "560 Divisadero St. SF, CA 94117", 
  phone_number: "(415)-864-8643"
)

p48 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/nopa1.png')
p49 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/nopa2.png')
p50 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/nopa3.png')
p51 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/nopa4.png')

rest13.photos.attach(io: p48, filename: 'nopa1.png')
rest13.photos.attach(io: p49, filename: 'nopa2.png')
rest13.photos.attach(io: p50, filename: 'nopa3.png')
rest13.photos.attach(io: p51, filename: 'nopa4.png')


rest14 = Restaurant.create!(
  name: 'Michael Mina', 
  about: "Michelin-starred MICHAEL MINA takes guests on a journey through a world of exquisite spices; the crown jewel of the family of MINA restaurants is a true culinary oasis for all five senses. 
  Chef Michael Mina’s eponymous fine dining restaurant reflects his core culinary philosophies 
  and is a return to the flavors of his childhood bringing together the best of his Middle Eastern heritage with the finest 
  of Mediterranean ingredients and techniques to create a completely new and unique culinary adventure – a world of 'Middleterranean' cuisine.", 
  city: 'San Francisco', 
  state: 'California', 
  cuisine: 'Mediterranean', 
  price: '$$$', 
  address: '252 California Street San Francisco , CA 94111', 
  phone_number: '(415)-722-2138'
)

p52 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/mina1.png')
p53 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/mina2.png')
p54 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/mina3.png')
p55 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/mina4.png')

rest14.photos.attach(io: p52, filename: 'mina1.png')
rest14.photos.attach(io: p53, filename: 'mina2.png')
rest14.photos.attach(io: p54, filename: 'mina3.png')
rest14.photos.attach(io: p55, filename: 'mina4.png')

rest15 = Restaurant.create!(
  name: "Mister Jiu's",
  about: "Chef/owner Brandon Jew has brought some of the sparkle back to Chinatown with this contemporary treasure, which puts a modern Californian spin on the Cantonese classics that once made this spot a national dining destination.", 
  city: 'San Francisco', 
  state: 'California',
  cuisine: 'Chinese', 
  price: '$$', 
  address: '28 Waverly Pl., San Francisco, 94108', 
  phone_number: ' (415) 857-9688'
)

p56 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/mister1.png')
p57 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/mister2.png')
p58 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/mister3.png')
p59 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/mister4.png')

rest15.photos.attach(io: p56, filename: 'mister1.png')
rest15.photos.attach(io: p57, filename: 'mister2.png')
rest15.photos.attach(io: p58, filename: 'mister3.png')
rest15.photos.attach(io: p59, filename: 'mister4.png')

rest16 = Restaurant.create!(
  name: 'Octavia', 
  about: 'Octavia is the newest restaurant and follow up to Frances, helmed by award-winning Executive Chef Melissa Perello. Octavia serves dinner seven nights a week in a sophisticated, elegant and relaxed neighborhood setting. 
  Beautifully defined flavors and seasonally driven cuisine are the cornerstones of Octavia’s menu.', 
  city: 'San Francisco',
  state: 'California',
  cuisine: 'Modern Californian', 
  price: '$$$', 
  address: '1701 Octavia St, San Francisco, CA 94109', 
  phone_number: '(415) 408-7507'
)

p60 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/octavia1.png')
p61 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/octavia2.png')
p62 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/octavia3.png')
p63 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/octavia4.png')

rest16.photos.attach(io: p60, filename: 'octavia1.png')
rest16.photos.attach(io: p61, filename: 'octavia2.png')
rest16.photos.attach(io: p62, filename: 'octavia3.png')
rest16.photos.attach(io: p63, filename: 'octavia4.png')

rest17 = Restaurant.create!(
  name: 'Rasa', 
  about: "Rasa opened in November 2014, after two years of careful planning, research, and development.
   Our goal was to bring a new kind of dining experience to the Peninsula while allowing our culinary prowess to shine while celebrating India’s rich culinary traditions.", 
  city: 'Burlingame',
  state: 'California',
  cuisine: 'Indian',
  price: '$$$', 
  address: '209 Park Rd, Burlingame, CA 94010', 
  phone_number: '(650) 340-7272'
)

p64 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/rasa1.png')
p65 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/rasa2.png')
p66 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/rasa3.png')
p67 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/rasa4.png')

rest17.photos.attach(io: p64, filename: 'rasa1.png')
rest17.photos.attach(io: p65, filename: 'rasa2.png')
rest17.photos.attach(io: p66, filename: 'rasa3.png')
rest17.photos.attach(io: p67, filename: 'rasa4.png')

rest18 = Restaurant.create!(
  name: 'SPQR', 
  about: "A Northern California restaurant inspired by Italian cuisine and wine, SPQR is an acronym for Senatus Populusque Romanus and translates to 'The People and Senate of Rome.' 
  Two thousand years ago it was the emblem of the Roman Empire and now, in 21st century San Francisco, 
  SPQR is the very highest emblem of what’s possible in contemporary Italian cuisine.", 
  city: 'San Francisco',
  state: 'California',
  cuisine: 'Italian', 
  price: '$$$', 
  address: '1911 Fillmore St, San Francisco, CA 94115',
  phone_number: '(415) 771-7779'
)

p68 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/spqr1.png')
p69 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/spqr2.png')
p70 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/spqr3.png')
p71 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/spqr4.png')

rest18.photos.attach(io: p68, filename: 'spqr1.png')
rest18.photos.attach(io: p69, filename: 'spqr2.png')
rest18.photos.attach(io: p70, filename: 'spqr3.png')
rest18.photos.attach(io: p71, filename: 'spqr4.png')

rest19 = Restaurant.create!(
  name: 'The Progress', 
  about: 'The Progress; 2014: A vehicle for a completely local production. Innovative banquet-style meals served with memorable wines. The greatest dinner party ever.', 
  city: 'San Francisco',
  state: 'California',
  cuisine: 'Modern Californian',
  price: '$$', 
  address: '1525 Fillmore St, San Francisco, CA 94115', 
  phone_number: '(415) 673-1294'
)

p72 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/progress1.png')
p73 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/progress3.png')
p74 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/progress3.png')
p75 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/progress4.png')

rest19.photos.attach(io: p72, filename: 'progress1.png')
rest19.photos.attach(io: p73, filename: 'progress2.png')
rest19.photos.attach(io: p74, filename: 'progress3.png')
rest19.photos.attach(io: p75, filename: 'progress4.png')

rest20 = Restaurant.create!(
  name: 'Rich Table', 
  about: 'Rich Table is the culinary vision of Chefs Evan and Sarah Rich. 
  With over three decades of combined experience in San Francisco and New York high-end restaurants, the team brings with them a wealth of talent, knowledge of quality foods and wine, and connections with the best farms and purveyors.', 
  city: 'San Francisco',
  state: 'California',
  cuisine: 'New American',
  price: '$$$', 
  address: '199 Gough St, San Francisco, CA 94102', 
  phone_number: '(415) 355-9085'
)

p76 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/rich1.png')
p77 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/rich2.png')
p78 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/rich3.png')
p79 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/rich4.png')

rest20.photos.attach(io: p76, filename: 'rich1.png')
rest20.photos.attach(io: p77, filename: 'rich2.png')
rest20.photos.attach(io: p78, filename: 'rich3.png')
rest20.photos.attach(io: p79, filename: 'rich4.png')

rest21 = Restaurant.create!(
  name: 'Frascati', 
  about: "Frascati is a Mediterranean style bistro, located in one of San Francisco’s most desirable neighborhoods – Russian Hill. 
  Our cuisine is inspired from the Mediterranean coast and has strong Californian influences.  The menu shifts frequently to utilize the best and freshest ingredients any season has to offer. 
   Also, we pride ourselves on all of our house made desserts and ice creams.",
   city: 'San Francisco',
   state: 'California',
   cuisine: 'Mediterranean',
   price: '$$$',
   address: '1901 Hyde St, San Francisco, CA 94109', 
   phone_number: '(415) 928-1406'
)

p80 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/fras1.png')
p81 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/frass2.png')
p82 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/frass3.png')
p83 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/frass4.png')

rest21.photos.attach(io: p80, filename: 'fras1.png')
rest21.photos.attach(io: p81, filename: 'frass2.png')
rest21.photos.attach(io: p82, filename: 'frass3.png')
rest21.photos.attach(io: p83, filename: 'frass4.png')

rest22 = Restaurant.create!(
  name: 'Kin Khao', 
  about: "Born and raised in Bangkok, Chef Pim Techamuanvivit took a circuitous route through the world of food–from writing, teaching, to jam making [ahem, award-winning jam making]–before finding her way back home to the food she grew up with. 
  Longing for Thai food of richer quality and variety in the U.S. Pim is now on a mission to liberate her beloved Thai cuisine from the tyranny of peanut sauce. 
  Kin Khao is her first (and hopefully not last) restaurant project.",
  city: 'San Francisco', 
  state: 'California',
  cuisine: 'Thai',
  price: '$$', 
  address: '55 Cyril Magnin St, San Francisco, CA 94102', 
  phone_number: '(415) 362-7456'
)

p84 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/kin1.png')
p85 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/kin2.png')
p86 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/kin3.png')
p87 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/kin4.png')

rest22.photos.attach(io: p84, filename: 'kin1.png')
rest22.photos.attach(io: p85, filename: 'kin2.png')
rest22.photos.attach(io: p86, filename: 'kin3.png')
rest22.photos.attach(io: p87, filename: 'kin4.png')

rest23 = Restaurant.create!(
  name: 'Compton Place', 
  about: 'Those with an eclectic palate will love Chef Srijith Gopinathan’s Cal-Indian menu at the Michelin-starred restaurant Campton Place Restaurant, where a European-Californian sensibility combines with a Spice Route influence to result in a mélange of flavours. 
  The elegant dining space and exceptional service make this one of the best fine-dining restaurants in the world.', 
  city: 'San Francisco',
  state: 'California',
  cuisine: 'Indian', 
  price: '$$$', 
  address: '340 Stockton St, San Francisco, CA 94108', 
  phone_number: '(415) 955-5555'
)

p88 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/compt1.png')
p89 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/compt2.png')
p90 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/compt3.png')
p91 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/compt4.png')

rest23.photos.attach(io: p88, filename: 'compt1.png')
rest23.photos.attach(io: p89, filename: 'compt2.png')
rest23.photos.attach(io: p90, filename: 'compt3.png')
rest23.photos.attach(io: p91, filename: 'compt4.png')

rest24 = Restaurant.create!(
  name: 'Flores', 
  about: "Traditional Mexican dishes and flavors, sourced from family recipes that originated in Mexican states from The Gulf to The Pacific, are not only the inspiration–they're the rule. Committed to honoring Mexican tradition, ours is a San Francisco-based Mexican restaurant, thought about in a different way.",
  city: 'San Francisco',
  state: 'California',
  cuisine: 'Mexican',
  price: '$$',
  address: '2030 Union St, San Francisco, CA 94123',
  phone_number: '(415) 796-2926'
)

p92 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/flores1.png')
p93 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/flores2.png')
p94 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/flores3.png')
p95 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/forkfullrestimg/flores4.png')

rest24.photos.attach(io: p92, filename: 'flores1.png')
rest24.photos.attach(io: p93, filename: 'flores2.png')
rest24.photos.attach(io: p94, filename: 'flores3.png')
rest24.photos.attach(io: p95, filename: 'flores4.png')

rest25 = Restaurant.create!(
  name: 'La Ciccia', 
  about: 'La Ciccia is an intimate restaurant located on the edge of Noe Valley. Husband and wife owners, Massimiliano Conti and Lorella Degan work together to take you to a culinary journey through the Italian island of Sardinia. 
  The chef is committed to use the freshest and the most authentic ingredients from his native island, resulting in pungent, lively, flavorful food.',
  city: 'San Francisco',
  state: 'California',
  cuisine: 'Italian',
  price: '$$$', 
  address: '291 30th St, San Francisco, CA 94131',
  phone_number: '(415) 550-8114'
)

p96 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/laciccia1.png')
p97 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/laciccia2.png')
p98 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/laciccia3.png')
p99 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/laciccia4.png')
p100 = open('https://app-forkfull-seeds.s3-us-west-1.amazonaws.com/laciccia5.png')

rest25.photos.attach(io: p96, filename: 'laciccia1.png')
rest25.photos.attach(io: p97, filename: 'laciccia2.png')
rest25.photos.attach(io: p98, filename: 'laciccia3.png')
rest25.photos.attach(io: p99, filename: 'laciccia4.png')
rest25.photos.attach(io: p100, filename: 'laciccia5.png')


res0 = Reservation.create!(restaurant_id: 1,
                                guest_id: demo_user.id,
                                party_size: 1,
                                reservation_date_time: Time.new(2021, 04, 10, 14, 00, 00))

res1 = Reservation.create!(restaurant_id: 2,
                                guest_id: demo_user.id,
                                party_size: 2,
                                reservation_date_time: Time.new(2017, 2, 13, 12, 30, 00))

res2 = Reservation.create!(restaurant_id: 3,
                                guest_id: demo_user.id,
                                party_size: 1,
                                reservation_date_time: Time.new(2017, 3, 17, 10, 30, 00))

res3 = Reservation.create!(restaurant_id: 3,
                                guest_id: demo_user.id,
                                party_size: 1,
                                reservation_date_time: Time.new(2017, 4, 19, 4, 30, 00))

res4 = Reservation.create!(restaurant_id: 4,
                                guest_id: demo_user.id,
                                party_size: 4,
                                reservation_date_time: Time.new(2017, 5, 20, 10, 30, 00))

res5 = Reservation.create!(restaurant_id: 5,
                                guest_id: demo_user.id,
                                party_size: 10,
                                reservation_date_time: Time.new(2017, 6, 23, 11, 30, 00))

res6 = Reservation.create!(restaurant_id: 10,
                                guest_id: demo_user.id,
                                party_size: 4,
                                reservation_date_time: Time.new(2017, 10, 18, 14, 30, 00))

res7 = Reservation.create!(restaurant_id: 23,
                                guest_id: demo_user.id,
                                party_size: 2,
                                reservation_date_time: Time.new(2018, 12, 7, 19, 00, 00))

res8 = Reservation.create!(restaurant_id: 1,
                                guest_id: demo_user.id,
                                party_size: 6,
                                reservation_date_time: Time.new(2018, 5, 14, 10, 30, 00))

res9 = Reservation.create!(restaurant_id: 19,
                                guest_id: demo_user.id,
                                party_size: 4,
                                reservation_date_time: Time.new(2018, 7, 19, 4, 30, 00))

res10 = Reservation.create!(restaurant_id: 25,
                                guest_id: user1.id,
                                party_size: 1,
                                reservation_date_time: Time.new(2018, 12, 4, 17, 30, 00))

res11 = Reservation.create!(restaurant_id: 24,
                                guest_id: user1.id,
                                party_size: 1,
                                reservation_date_time: Time.new(2018, 8, 8, 12, 30, 00))

res12 = Reservation.create!(restaurant_id: 23,
                                guest_id: user1.id,
                                party_size: 2,
                                reservation_date_time: Time.new(2018, 9, 9, 10, 00, 00))

res13 = Reservation.create!(restaurant_id: 22,
                                guest_id: user1.id,
                                party_size: 1,
                                reservation_date_time: Time.new(2018, 10, 12, 22, 30, 00))

res14 = Reservation.create!(restaurant_id: 21,
                                guest_id: user1.id,
                                party_size: 3,
                                reservation_date_time: Time.new(2019, 12, 17, 8, 30, 00))

res15 = Reservation.create!(restaurant_id: 20,
                                guest_id: user1.id,
                                party_size: 1,
                                reservation_date_time: Time.new(2019, 5, 1, 20, 30, 00))

res16 = Reservation.create!(restaurant_id: 1,
                                guest_id: user2.id,
                                party_size: 11,
                                reservation_date_time: Time.new(2019, 7, 8, 21, 00, 00))

res17 = Reservation.create!(restaurant_id: 12,
                                guest_id: user2.id,
                                party_size: 1,
                                reservation_date_time: Time.new(2019, 1, 19, 16, 30, 00))

res18 = Reservation.create!(restaurant_id: 13,
                                guest_id: user2.id,
                                party_size: 3,
                                reservation_date_time: Time.new(2019, 2, 18, 19, 00, 00))

res19 = Reservation.create!(restaurant_id: 17,
                                guest_id: user2.id,
                                party_size: 6,
                                reservation_date_time: Time.new(2019, 3, 12, 3, 30, 00))

res20 = Reservation.create!(restaurant_id: 14,
                                guest_id: user2.id,
                                party_size: 5,
                                reservation_date_time: Time.new(2020, 8, 10, 4, 30, 00))

res21 = Reservation.create!(restaurant_id: 15,
                                guest_id: user2.id,
                                party_size: 4,
                                reservation_date_time: Time.new(2020, 11, 20, 10, 30, 00))
