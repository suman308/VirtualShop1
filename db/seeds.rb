

require "open-uri"


User.destroy_all
Store.destroy_all 
Product.destroy_all
# Seed users

DemoUser = User.create(username: 'demo', email: 'DemoUser', password: 'password')
u1 = User.create(username: 'Jamie', email: 'jamie@cc.com', password: 'password')
u2 = User.create(username: 'Winston', email: 'winston@cc.com', password: 'password')
u3 = User.create(username: 'Fred', email: 'fred@cc.com', password: 'password')
u4 = User.create(username: 'Mindy', email: 'mindy@cc.com', password: 'password')
u5 = User.create(username: 'Sean', email: 'sean@cc.com', password: 'password')
u6 = User.create(username: 'Jerry', email: 'jerry@cc.com', password: 'password')
u7 = User.create(username: 'June', email: 'june@cc.com', password: 'password')
u8 = User.create(username: 'Emmy', email: 'emmy@cc.com', password: 'password')
u9 = User.create(username: 'Kyle', email: 'kyle@cc.com', password: 'password')
u10 = User.create(username: 'Peter', email: 'peter@cc.com', password: 'password')
u11 = User.create(username: 'Jenna', email: 'jenna@cc.com', password: 'password')
u12 = User.create(username: 'Arthur', email: 'arthur@cc.com', password: 'password')
u13 = User.create(username: 'Justin', email: 'justin@cc.com', password: 'password')
u14 = User.create(username: 'Dianne', email: 'dianne@cc.com', password: 'password')
u15 = User.create(username: 'Harold', email: 'harold@cc.com', password: 'password')
u16 = User.create(username: 'Valeria', email: 'valeria@cc.com', password: 'password')
u17 = User.create(username: 'Vanessa', email: 'vanessa@cc.com', password: 'password')
u18 = User.create(username: 'Joel', email:'joel@cc.com', password: 'password')
u19 = User.create(username: 'Michaela', email: 'michaela@cc.com', password:'password')

store1 = Store.create(name:'Jamie-store', owner_id:u1.id)
store2 = Store.create(name:'Winston-store', owner_id: u2.id)
store3 = Store.create(name:'Fred-store', owner_id: u3.id)
store4 = Store.create(name:'Mindy-store', owner_id:u4.id)
store5 = Store.create(name:'Sean-store', owner_id:u5.id)
store6 = Store.create(name:'Jerry-store', owner_id:u6.id)
store7 = Store.create(name:'Kyle-store', owner_id:u9.id)
store8 = Store.create(name:'Jenna-store', owner_id:u11.id)
store9 = Store.create(name:'Arthur-store', owner_id:u12.id)
store10 = Store.create(name:'Justin-store', owner_id:u13.id)


# ======================================================== ALL PICTURES WE HAVE IN DATABASE================================================================






# --------------------------the product under the art categroy -----------------------------------
product1= Product.create(name:"Beach-painting", details:"The 6feets * 6 feets wall water painting of the beach for the decoration" , price:10.23, category:'Art', store_id:1)
product2= Product.create(name:"Ganesh-statue", details:"The medium sizd marble statue of the lord ganesh ", price:180.23, category:'Art', store_id:store2.id)
product3= Product.create(name:"Jesus-painting", details: "The oil painting of the jesus of 55inch * 55inch perfect for the living room wall", price:1380.23, category:'Art', store_id:store3.id)
product4= Product.create(name:"Kali-paiting", details:"The bright oil painting of the hindu goddess of power and destruction. It is painted on the 1 inch thick canvas.it is deliverd free ", price:7.23, category:'Art', store_id: store5.id)
product5= Product.create(name:"San Fransisco-painting", details:"The large scale of expressionist painting of the Iconic golden gate bridge of san fransisco", price:180.23, category:'Art', store_id: store4.id)
product26= Product.create(name:"Ganesh-painting", details:"The large scale of post-modern painting of the lord ganesh", price:180.23, category:'Art', store_id: store6.id)

# --------------------------the product under the book categroy --------------------------------------
product6= Product.create(name:"Bookselves-cover", details:"The cover of the laptop with the design of the  Bookselves", price:80.23, category:'Books', store_id:store6.id)
product7= Product.create(name:"Table-calender", details:"Perfect small turning calender for the working table with 10 yrs of the data. ", price:23.34, category:'Books', store_id: store7.id)
product8= Product.create(name:"Colorful-bookselves", details:"The 4 feets * 4 feets colorful bookselves.The perfect decorative piece for the home libraty or any living room ", price:56.23, category:'Books', store_id: store8.id)
product9= Product.create(name:"Hukka", details:"Beautiful art piecefrom the Mugal sclupture.Sparkling and colorful decorative Hukka vase", price:146.23, category:'Books', store_id: store9.id)
product10= Product.create(name:"Leather-book", details:"Classical leather cover book for the man with taste.It has 100 percent cow leather with 2 years warrenty attached", price:1400.23, category:'Books', store_id: store10.id)
product11= Product.create(name:"Planner-book", details:"The perfect tool to plan and document the events. It has days , date and years with japanese paper", price:1400.23, category:'Books', store_id: store10.id)
product12= Product.create(name:"Shakespare-play", details:"The collection of the most popular Shakespare's plays with the leather cover and nylon binding for the protection ", price:1400.23, category:'Books', store_id: store10.id)

# --------------------------the product under the clothes categroy --------------------------------------
product13= Product.create(name:"Hoodies", details:"The medium size hoodies with  varied color of choice ", price:14.23, category:'Clothes', store_id: store9.id)
product14= Product.create(name:"Men-jeans", details:"The blue dark  jeans for men with 100 percent cotton from america.It is stretchy and comfortable", price:14.23, category:'Clothes', store_id: store10.id)
product15= Product.create(name:"sneakers", details:"Super cool design sneakers with colorful options", price:44.23, category:'Clothes', store_id: store9.id)
product16= Product.create(name:"T-shirt", details:"The 100 percent cotton T-shirt with different color choices and comes in three standard size small, medium and large", price:20.45, category:'Clothes', store_id: store4.id)

# --------------------------the product under the Electronics categroy --------------------------------------

product17= Product.create(name:"Polar-glass", details:"The stylish glass for the men with strong polymer frame and hardened glass ", price:20.45, category:'Electronics', store_id: store4.id)
product18= Product.create(name:"Joystick", details:"The DUALSHOCK Wireless Controller for PS4 gives you what you want in your gaming from precision control over your games to sharing your greatest gameplay moments with your friends while providing easy recharging so you are always ready.", price:96.60, category:'Electronics', store_id: store4.id)
product19= Product.create(name:"Lightsaber", details:"KYBERS RGB 11 Colors Changeable Metal Hilt Light Saber with 3 Mode Sound Force FX Dueling Lightsaber available in red, blue and green ", price:120.49, category:'Electronics', store_id: store2.id)
product20= Product.create(name:"Pendrive", details:"the glass and shiny metal pendrive, perfect for as gift. It has 300 GB memory.", price:20.45, category:'Electronics', store_id: store4.id)

#  --------------------------------------picture from the  jewelry folder-----------------------------------

product21= Product.create(name:"bluediamonds", details:"The Sparkling blue dimanond of AAA Quality", price:40000, category:'Jewelry', store_id: store4.id)
product22= Product.create(name:"Dimaond", details:"The Crystal colorless shining dimanond of AAA Quality", price:50000, category:'Jewelry', store_id: store4.id)
product23= Product.create(name:"golddiamond", details:"The Golden shining dimanond of AAA Quality", price:60000, category:'Jewelry', store_id: store4.id)
product24= Product.create(name:"Topaz", details:"The pure topaz of the afican mine ", price:70000, category:'Jewelry', store_id: store4.id)


# ------------------pictureS from the art folder------------------------

# beach

picArtBeach1 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/beach1.jpg")
picArtBeach2 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/beach2.jpg")
picArtBeach3 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/beach3.jpg")
picArtBeach4 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/beach4.jpg")

# gana

picArtGana1= open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/gana1.jpg")
picArtGana2= open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/gana2.jpg")
picArtGana3= open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/gana3.jpg")
picArtGana4= open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/gana4.jpg")

# ganesh 

picArtGanesh1 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/ganesh.jpg")
picArtGanesh2 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/ganesh2.jpg")
picArtGanesh3 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/ganesh3.jpg")

# jesus 

picArtJesus1 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/jesus1.jpg")
picArtJesus2 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/jesus2.jpg")
picArtJesus3 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/jesus3.jpg")
picArtJesus4 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/jesus4.jpg")

# kali 

picArtKali1 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/kali1.jpg")
picArtKali2 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/kali2.jpg")

# sf 

picArtSf1 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/sf1.jpg")
picArtSf2 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/sf2.jpg")
picArtSf3= open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/sf3.jpg")
picArtSf4 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/sf4.jpg")

# ------------------picture from the book folder------------------------
# book 

picBookBookselves1 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/bookselves1.jpg")
picBookBookselves2 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/bookselves2.jpg")

# calender

picBookCalender1 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/calender1.jpg")
picBookCalender2 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/calender2.jpg")
picBookCalender3 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/calender3.jpg")
picBookCalender4 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/calender4.jpg")

# colorfulbook 

picBookColorfulbook1 =  open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/colorfulbook1.jpg")
picBookColorfulbook2 =  open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/colorfulbook2.jpg")
picBookColorfulbook3 =  open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/colorfulbook3.jpg")
picBookColorfulbook4 =  open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/colorfulbook4.jpg")

# hukkabook 

picBookHukkabook1 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/hukkabook.jpg")
picBookHukkabook2 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/hukkabooks2.jpg")
picBookHukkabook3 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/hukkabook3.jpg")
picBookHukkabook4 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/hukkabooks4.jpg")

# leatherbook 

picBookLeatherbook1 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/leatherbook1.jpg")
picBookLeatherbook2 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/leatherbook2.jpg")
picBookLeatherbook3 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/leatherbook3.jpg")
picBookLeatherbook4 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/leatherbook4.jpg")

# plannerbook

picBookPlannerbook1 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/plannerbook1.jpg")
picBookPlannerbook2 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/plannerbook2.jpg")
picBookPlannerbook3 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/plannerbook3.jpg")


# shakesparebook 

picBookShakesparebook1 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/shakesparebook1.jpg")
picBookShakesparebook2 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/shakesparebook2.jpg")
picBookShakesparebook3 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/shakesparebook3.jpg")



# ------------------picture from the clothes folder------------------------
#hoodies

picClothesHoodies1 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/hoodies1.jpg")
picClothesHoodies2 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/hoodies2.jpg")
picClothesHoodies3 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/hoodies3.jpg")
picClothesHoodies4 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/hoodies4.jpg")

# menjeans 

picClothesMenjeans1 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/menjeans1.jpg")
picClothesMenjeans2 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/menjeans2.jpg")
picClothesMenjeans3 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/menjeans3.jpg")
picClothesMenjeans4 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/menjeans4.jpg")

#shoes

picClothesShoes1 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/shoes1.jpg")
picClothesShoes2 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/shoes2.jpg")
picClothesShoes3 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/shoes3.jpg")
picClothesShoes4 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/shoes4.jpg")

# t-shirts 

picClothesTshirt1 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/tshirt1.jpg")
picClothesTshirt2 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/tshirt2.jpg")
picClothesTshirt3 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/tshirt3.jpg")

# ------------------picture from the electronics folder------------------------

#  ironglass

picElectronicsIronglass1 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/ironglass1.jpg")
picElectronicsIronglass2 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/ironglass2.jpg")
picElectronicsIronglass3 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/ironglass3.jpg")
picElectronicsIronglass4 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/ironglass4.jpg")

# joystick 

picElectronicsJoystick1 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/joystick1.jpg")
picElectronicsJoystick2 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/joystick2.jpg")
picElectronicsJoystick3 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/joystick3.jpg")

# lightsaber 

picElectronicsLightsaber1 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/lightsaber1.jpg")
picElectronicsLightsaber2 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/lightsaber2.jpg")
picElectronicsLightsaber3 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/lightsaber3.jpg")
picElectronicsLightsaber4= open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/lightsaber4.jpg")

# pendrives 

picElectronicsPendrive1 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/pendrive1.jpg")
picElectronicsPendrive2 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/pendrive2.jpg")
picElectronicsPendrive3 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/pendrive3.jpg")
picElectronicsPendrive4 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/pendrive4.jpg")


#  ------------------picture from the  jewelry folder------------------------
# bluediamonds


picJewelryBluediamonds1 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/bluediamond1.jpg")
picJewelryBluediamonds2 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/bluediamond2.jpg")
picJewelryBluediamonds3 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/bluediamond3.jpg")
picJewelryBluediamonds4 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/bluediamond4.jpg")

# crystaldiamonds 

picJewelryCrystaldiamonds1 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/crystaldiamond1.jpg")
picJewelryCrystaldiamonds2 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/crystaldiamond2.jpg")
picJewelryCrystaldiamonds3 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/crystaldiamond3.jpg")
picJewelryCrystaldiamonds4 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/crystaldiamond4.jpg")

#diamond 

picJewelryDiamonds1 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/diamond1.jpg")
picJewelryDiamonds2 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/diamond2.jpg")
picJewelryDiamonds3 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/diamond3.jpg")
picJewelryDiamonds4 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/diamond4.jpg")

#golddiamond 

picJewelryGoldDiamonds1 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/golddiamond1.jpg")
picJewelryGoldDiamonds2 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/golddiamond2.jpg")
picJewelryGoldDiamonds3 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/golddiamond3.jpg")
picJewelryGoldDiamonds4 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/golddiamond4.jpg")

#topaz

picJewelryTopaz1 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/topaz1.jpg")
picJewelryTopaz2 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/topaz2.jpg")
picJewelryTopaz3 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/topaz3.jpg")
picJewelryTopaz4 = open("https://virtualshop-dev.s3-us-west-1.amazonaws.com/topaz4.jpg")
# ================================================ attach the picture to the products ==============================================

# the picture of beach
product1.images.attach(io: picArtBeach1, filename: 'beach1.jpg')
product1.images.attach(io: picArtBeach2, filename: 'beach2.jpg')
product1.images.attach(io: picArtBeach3, filename: 'beach3.jpg')
product1.images.attach(io: picArtBeach4, filename: 'beach4.jpg')

# The statue  of https://virtualshop-dev.s3-us-west-1.amazonaws.com/ 
product2.images.attach(io: picArtGana1, filename: 'gana1.jpg')
product2.images.attach(io: picArtGana2, filename: 'gana2.jpg')
product2.images.attach(io: picArtGana3, filename: 'gana3.jpg')
product2.images.attach(io: picArtGana4, filename: 'gana4.jpg')

# The painting of ganesh 
product26.images.attach(io: picArtGanesh1, filename: 'ganesh.jpg')
product26.images.attach(io: picArtGanesh2, filename: 'ganesh2.jpg')
product26.images.attach(io: picArtGanesh3, filename: 'ganesh3.jpg')

# The painting of Jesus 
product3.images.attach(io: picArtJesus1, filename: 'jesus1.jpg')
product3.images.attach(io: picArtJesus2, filename: 'jesus2.jpg')
product3.images.attach(io: picArtJesus3, filename: 'jesus3.jpg')
product3.images.attach(io: picArtJesus4, filename: 'jesus4.jpg')

# The painting of Jesus 
product4.images.attach(io: picArtKali1 , filename: 'kali1.jpg')
product4.images.attach(io: picArtKali2 , filename: 'kali2.jpg')
 
# The painting of sf-bridge
product5.images.attach(io: picArtSf1 , filename: 'sf1.jpg')
product5.images.attach(io: picArtSf2 , filename: 'sf2.jpg')
product5.images.attach(io: picArtSf3 , filename: 'sf3.jpg')
product5.images.attach(io: picArtSf4 , filename: 'sf4.jpg')

# The bookselves  
product6.images.attach(io: picBookBookselves1 , filename: 'bookselves1.jpg')
product6.images.attach(io: picBookBookselves2 , filename: 'bookselves2.jpg')

#  the calender 
product7.images.attach(io: picBookCalender1, filename: 'calender1.jpg')
product7.images.attach(io: picBookCalender2, filename: 'calender2.jpg')
product7.images.attach(io: picBookCalender3, filename: 'calender3.jpg')
product7.images.attach(io: picBookCalender4, filename: 'calender4.jpg')

#  colorfulbook 
product8.images.attach(io: picBookColorfulbook1, filename: 'colorfulbook1.jpg')
product8.images.attach(io: picBookColorfulbook2, filename: 'colorfulbook2.jpg')
product8.images.attach(io: picBookColorfulbook3, filename: 'colorfulbook3.jpg')
product8.images.attach(io: picBookColorfulbook4, filename: 'colorfulbook4.jpg')

# hukkabook
product9.images.attach(io: picBookHukkabook1, filename: 'hukkabook.jpg')
product9.images.attach(io: picBookHukkabook2, filename: 'hukkabook2.jpg')
product9.images.attach(io: picBookHukkabook3, filename: 'hukkabook3.jpg')
product9.images.attach(io: picBookHukkabook4, filename: 'hukkabook4.jpg')

# leatherbook
product10.images.attach(io: picBookLeatherbook1 , filename: 'leatherbook1.jpg')
product10.images.attach(io: picBookLeatherbook2 , filename: 'leatherbook2.jpg')
product10.images.attach(io: picBookLeatherbook3 , filename: 'leatherbook3.jpg')
product10.images.attach(io: picBookLeatherbook4 , filename: 'leatherbook4.jpg')

# plannerbook
product11.images.attach(io: picBookPlannerbook1 , filename: 'plannerbook1.jpg')
product11.images.attach(io: picBookPlannerbook2 , filename: 'plannerbook2.jpg')
product11.images.attach(io: picBookPlannerbook3, filename: 'plannerbook3.jpg')

# shakesparebook
product12.images.attach(io: picBookShakesparebook1 , filename: 'shakesparebook1.jpg')
product12.images.attach(io: picBookShakesparebook2, filename: 'shakesparebook2.jpg')
product12.images.attach(io: picBookShakesparebook3, filename: 'shakesparebook3.jpg')

# hoodies
product13.images.attach(io: picClothesHoodies1, filename: 'hoodies1.jpg')
product13.images.attach(io: picClothesHoodies2, filename: 'hoodies2.jpg')
product13.images.attach(io: picClothesHoodies3, filename: 'hoodies3.jpg')
product13.images.attach(io: picClothesHoodies4, filename: 'hoodies4.jpg')

# Menjeans
product14.images.attach(io: picClothesMenjeans1, filename: 'menjeans1.jpg')
product14.images.attach(io: picClothesMenjeans2, filename: 'menjeans2.jpg')
product14.images.attach(io: picClothesMenjeans3, filename: 'menjeans3.jpg')
product14.images.attach(io: picClothesMenjeans4, filename: 'menjeans4.jpg')

# shoes
product15.images.attach(io: picClothesShoes1, filename: 'shoes1.jpg')
product15.images.attach(io: picClothesShoes2, filename: 'shoes2.jpg')
product15.images.attach(io: picClothesShoes3, filename: 'shoes3.jpg')
product15.images.attach(io: picClothesShoes4, filename: 'shoes4.jpg')

# t-shirt
product16.images.attach(io: picClothesTshirt1, filename: 'tshirt1.jpg')
product16.images.attach(io: picClothesTshirt2, filename: 'tshirt2.jpg')
product16.images.attach(io: picClothesTshirt3, filename: 'tshirt3.jpg')

# IronGlass
product17.images.attach(io: picElectronicsIronglass1, filename: 'ironglass1.jpg')
product17.images.attach(io: picElectronicsIronglass2, filename: 'ironglass2.jpg')
product17.images.attach(io: picElectronicsIronglass3, filename: 'ironglass3.jpg')
product17.images.attach(io: picElectronicsIronglass4, filename: 'ironglass4.jpg')

# joystick
product18.images.attach(io: picElectronicsJoystick1, filename: 'joystick1.jpg')
product18.images.attach(io: picElectronicsJoystick2, filename: 'joystick2.jpg')
product18.images.attach(io: picElectronicsJoystick3, filename: 'joystick3.jpg')

# lightsaber
product19.images.attach(io: picElectronicsLightsaber1, filename: 'lightsaber1.jpg')
product19.images.attach(io: picElectronicsLightsaber2, filename: 'lightsaber2.jpg')
product19.images.attach(io: picElectronicsLightsaber3, filename: 'lightsaber3.jpg')
product19.images.attach(io: picElectronicsLightsaber4, filename: 'lightsaber4.jpg')

# Pendrive
product20.images.attach(io: picElectronicsPendrive1, filename: 'pendrive1.jpg')
product20.images.attach(io: picElectronicsPendrive2, filename: 'pendrive2.jpg')
product20.images.attach(io: picElectronicsPendrive3, filename: 'pendrive3.jpg')
product20.images.attach(io: picElectronicsPendrive4, filename: 'pendrive4.jpg')

# bluediamond
product21.images.attach(io: picJewelryBluediamonds1 , filename: 'bluediamond1.jpg')
product21.images.attach(io: picJewelryBluediamonds2 , filename: 'bluediamond2.jpg')
product21.images.attach(io: picJewelryBluediamonds3, filename: 'bluediamond3.jpg')
product21.images.attach(io: picJewelryBluediamonds4, filename: 'bluediamond4.jpg')


# diamond
product22.images.attach(io: picJewelryCrystaldiamonds1  , filename: 'diamond1.jpg')
product22.images.attach(io: picJewelryCrystaldiamonds2, filename: 'diamond2.jpg')
product22.images.attach(io: picJewelryCrystaldiamonds3, filename: 'diamond3.jpg')
product22.images.attach(io: picJewelryCrystaldiamonds4, filename: 'diamond4.jpg')

# golddiamond
product23.images.attach(io: picJewelryGoldDiamonds1, filename:'golddiamond1.jpg')
product23.images.attach(io: picJewelryGoldDiamonds2, filename:'golddiamond2.jpg')
product23.images.attach(io: picJewelryGoldDiamonds3, filename:'golddiamond3.jpg')
product23.images.attach(io: picJewelryGoldDiamonds4, filename:'golddiamond4.jpg')

# golddiamond
product24.images.attach(io: picJewelryTopaz1, filename:'topaz1.jpg')
product24.images.attach(io: picJewelryTopaz2, filename:'topaz2.jpg')
product24.images.attach(io: picJewelryTopaz3, filename:'topaz3.jpg')
product24.images.attach(io: picJewelryTopaz4, filename:'topaz4.jpg')
# =====================================================================



 








