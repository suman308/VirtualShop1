

require "open-uri"


User.destroy_all
Store.destroy_all 
Product.destroy_all
Rating.destroy_all
Comment.destroy_all
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

# jesus-painting

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

# ==============================rating =================================
# ===============================comment================================
# ==============================product1===============================
rating1 = Rating.create(user_id:u1.id, product_id:product1.id, rating:4.5)
comment1 = Comment.create(user_id:u1.id, product_id:product1.id, body:"very good product. I highly recommend it.")

rating2 = Rating.create(user_id:u2.id, product_id:product1.id, rating:3.5)
comment2 = Comment.create(user_id:u2.id, product_id:product1.id, body:"very good product compared to the price it has on it. I  recommend it.")

rating3 = Rating.create(user_id:u3.id, product_id:product1.id, rating:2.5)
comment3 = Comment.create(user_id:u3.id, product_id:product1.id, body:"It is a  okey product compared to the price it has on it. I  recommend it on your own risk.")
# ====================product2============================
rating4 = Rating.create(user_id:u4.id, product_id:product2.id, rating:1.5)
comment4 = Comment.create(user_id:u4.id, product_id:product2.id, body:"When it was deliverd, it was broken and when i contacted they didn't replace it. I  don't recommend it.")
rating5 = Rating.create(user_id:u5.id, product_id:product2.id, rating:4.5)
comment5 = Comment.create(user_id:u5.id, product_id:product2.id, body:"The colors are bright and dense. Make the room have vibrant energy. I  recommend it to anyone who has taste for fine art.")
rating6 = Rating.create(user_id:u6.id, product_id:product2.id, rating:2.5)
comment6 = Comment.create(user_id:u6.id, product_id:product2.id, body:"I don't find the product very exciting and don't recommend to other. Take a wise shot and buy it if you have lot to spare")

# ====================product3===========================================
rating7 = Rating.create(user_id:u1.id, product_id:product3.id, rating:2.5)
comment7 = Comment.create(user_id:u1.id, product_id:product3.id, body:"Not a very good painting according to the established standard. Take a wise shot and buy it if you have lot to spare")
rating8 = Rating.create(user_id:u11.id, product_id:product3.id, rating:4.0)
comment8 = Comment.create(user_id:u11.id, product_id:product3.id, body:" A very good painting according to the established standard. Take a wise shot and buy it.")
rating9 = Rating.create(user_id:u12.id, product_id:product3.id, rating:4.0)
comment9 = Comment.create(user_id:u12.id, product_id:product3.id, body:"A very bright and coherent oil painting that is meant for the living and drawing room")
# =====================product4 =============================================
rating10 = Rating.create(user_id:u10.id, product_id:product4.id, rating:5.0)
comment10 = Comment.create(user_id:u10.id, product_id:product4.id, body:"A very bright and coherent oil painting that is meant for the living and drawing room")

rating11 = Rating.create(user_id:u12.id, product_id:product4.id, rating:4.0)
comment11 = Comment.create(user_id:u12.id, product_id:product4.id, body:"A very beautiful painting i highly recommend for painting lover")
rating12 = Rating.create(user_id:u13.id, product_id:product4.id, rating:4.5)
comment12 = Comment.create(user_id:u13.id, product_id:product4.id, body:"Good decorative thing for the wall. If you can afford it go for it")
rating13 = Rating.create(user_id:u14.id, product_id:product4.id, rating:4.5)
comment13 = Comment.create(user_id:u14.id, product_id:product4.id, body:"I highly recommend the painting and i also love the packaging and delivery")
# =====================product5 =============================================
rating14 = Rating.create(user_id:u15.id, product_id:product5.id, rating:4.5)
comment14 = Comment.create(user_id:u15.id, product_id:product5.id, body:"I recommend this ")
rating15 = Rating.create(user_id:u19.id, product_id:product5.id, rating:4.5)
comment15 = Comment.create(user_id:u19.id, product_id:product5.id, body:"I highly recommend the painting and i also love the packaging and delivery")
rating16 = Rating.create(user_id:u12.id, product_id:product5.id, rating:4.5)
comment16 = Comment.create(user_id:u12.id, product_id:product5.id, body:"I highly recommend the painting ")
# =====================product6 =============================================
rating17 = Rating.create(user_id:u1.id, product_id:product6.id, rating:4.5)
comment17 = Comment.create(user_id:u1.id, product_id:product6.id, body:"It is the exciting bookselves to have in the price ")

rating18 = Rating.create(user_id:u6.id, product_id:product6.id, rating:4.5)
comment18 = Comment.create(user_id:u6.id, product_id:product6.id, body:"what a product.I recommend it to everyone. I liked the price and the product")

rating19 = Rating.create(user_id:u8.id, product_id:product6.id, rating:4.5)
comment19 = Comment.create(user_id:u8.id, product_id:product6.id, body:"Damn good return for the price we pay. Totally worth it")
# =====================product7 =============================================
rating20 = Rating.create(user_id:u10.id, product_id:product7.id, rating:4.5)
comment20 = Comment.create(user_id:u10.id, product_id:product7.id, body:"A very good return for investment. Totally recommend")

rating21 = Rating.create(user_id:u3.id, product_id:product7.id, rating:4.5)
comment21 = Comment.create(user_id:u3.id, product_id:product7.id, body:"I recommend it to everyone and it is worth the price ")

rating22 = Rating.create(user_id:u7.id, product_id:product7.id, rating:4.5)
comment22 = Comment.create(user_id:u7.id, product_id:product7.id, body:"I recommend this product. Loved the delivery and customer care")
# =====================product8 =============================================
rating23 = Rating.create(user_id:u17.id, product_id:product8.id, rating:4.5)
comment23 = Comment.create(user_id:u17.id, product_id:product8.id, body:"Beautiful frame for the books that is suited for the reading room or the bedroom")

rating24 = Rating.create(user_id:u12.id, product_id:product8.id, rating:4.5)
comment24 = Comment.create(user_id:u12.id, product_id:product8.id, body:"Beautiful atics and decorative piece for the home decoration. Recommend it")

rating25 = Rating.create(user_id:u13.id, product_id:product8.id, rating:4.5)
comment25 = Comment.create(user_id:u13.id, product_id:product8.id, body:"good return for the price we pay. Totally worth it")
# =====================product9 =============================================
rating26 = Rating.create(user_id:u13.id, product_id:product9.id, rating:4.5)
comment26 = Comment.create(user_id:u13.id, product_id:product9.id, body:"A good arabic hukka piece for the decoration and the show piece")

rating27 = Rating.create(user_id:u11.id, product_id:product9.id, rating:4.5)
comment27 = Comment.create(user_id:u11.id, product_id:product9.id, body:"colorful and shiny hukka from arabic artistic culture.Higly recommend it for all")

rating28 = Rating.create(user_id:u14.id, product_id:product9.id, rating:4.5)
comment28 = Comment.create(user_id:u14.id, product_id:product9.id, body:"Totally exotic art piece form middle east that carry heritage with it.Go for it")
# =====================product10 =============================================
rating29 = Rating.create(user_id:u1.id, product_id:product10.id, rating:4.5)
comment29 = Comment.create(user_id:u1.id, product_id:product10.id, body:" a very good return for the price we pay for the leather cover . Totally worth it")

rating30 = Rating.create(user_id:u2.id, product_id:product10.id, rating:4.5)
comment30 = Comment.create(user_id:u2.id, product_id:product10.id, body:"Beautiful leather cover and shiny surface. Worth the price")

rating31 = Rating.create(user_id:u3.id, product_id:product10.id, rating:4.5)
comment31 = Comment.create(user_id:u3.id, product_id:product10.id, body:"Loved the product and the service. I have order few days back and it was very good")
# =====================product11 =============================================
rating32 = Rating.create(user_id:u11.id, product_id:product11.id, rating:3.5)
comment32 = Comment.create(user_id:u11.id, product_id:product11.id, body:"nice day planner book for the reasonable price")

rating33 = Rating.create(user_id:u17.id, product_id:product11.id, rating:3.5)
comment33 = Comment.create(user_id:u17.id, product_id:product11.id, body:"good return for the price we pay. Totally worth it")

rating34 = Rating.create(user_id:u13.id, product_id:product11.id, rating:3.5)
comment34 = Comment.create(user_id:u13.id, product_id:product11.id, body:"recommend this product to all who need the daily planner for the reasonable price")
# =====================product12 =============================================
rating35 = Rating.create(user_id:u1.id, product_id:product12.id, rating:4.5)
comment35 = Comment.create(user_id:u1.id, product_id:product12.id, body:"A very good return for the price we pay. Totally worth it")

rating36 = Rating.create(user_id:u7.id, product_id:product12.id, rating:4.5)
comment36 = Comment.create(user_id:u7.id, product_id:product12.id, body:"The best product for the shakespare lover. Highly recommend it ")

rating37 = Rating.create(user_id:u8.id, product_id:product12.id, rating:4.5)
comment37 = Comment.create(user_id:u8.id, product_id:product12.id, body:"Nice collection of the shakespare work with the hardcover ")
# =====================product13 =============================================
rating38 = Rating.create(user_id:u3.id, product_id:product13.id, rating:2.5)
comment39 = Comment.create(user_id:u3.id, product_id:product13.id, body:"thick and warm hoodies for the winder. But the quality of fiber is very poor ")

rating40= Rating.create(user_id:u7.id, product_id:product13.id, rating:2.5)
comment40 = Comment.create(user_id:u7.id, product_id:product13.id, body:"Beautiful hoodie with nice color is not so durable.It was torn just after one week")

rating41= Rating.create(user_id:u11.id, product_id:product13.id, rating:2.5)
comment41 = Comment.create(user_id:u11.id, product_id:product13.id, body:"It looks fancy but it is not durable or sophisticated. Go for more expensive ones")
# =====================product14 =============================================
rating42= Rating.create(user_id:u3.id, product_id:product14.id, rating:3.5)
comment42 = Comment.create(user_id:u3.id, product_id:product14.id, body:"Durable jeans in all sizes. recommend it ")

rating43 = Rating.create(user_id:u9.id, product_id:product14.id, rating:4.5)
comment43 = Comment.create(user_id:u9.id, product_id:product14.id, body:"A very good return for the price . This jeans is Totally worth it")

rating44= Rating.create(user_id:u4.id, product_id:product14.id, rating:1.5)
comment44 = Comment.create(user_id:u4.id, product_id:product14.id, body:"I had orderd medium and the size is not fitting right. Check the proper size before ordering")
# =====================product15 =============================================
rating45= Rating.create(user_id:u4.id, product_id:product15.id, rating:4.5)
comment45 = Comment.create(user_id:u4.id, product_id:product15.id, body:" A good return for the price we pay for the shoes. Totally worth it")

rating46 = Rating.create(user_id:u14.id, product_id:product15.id, rating:4.5)
comment46 = Comment.create(user_id:u14.id, product_id:product15.id, body:"Nice sneaker in varied color and size, Definately recommend it")

rating47= Rating.create(user_id:u19.id, product_id:product15.id, rating:4.5)
comment47 = Comment.create(user_id:u19.id, product_id:product15.id, body:"A reasonable price for the sneaker in the market")
# =====================product16 =============================================
rating48 = Rating.create(user_id:u16.id, product_id:product16.id, rating:4.5)
comment48 = Comment.create(user_id:u16.id, product_id:product16.id, body:" A good return for the price we pay for a t-shirt. Totally worth it")

rating49= Rating.create(user_id:u6.id, product_id:product16.id, rating:4.5)
comment49 = Comment.create(user_id:u6.id, product_id:product16.id, body:"A colorful and nice fitting t-shirt.recommend it to all")

rating50= Rating.create(user_id:u4.id, product_id:product16.id, rating:4.5)
comment50 = Comment.create(user_id:u4.id, product_id:product16.id, body:"Nice fancy t-shirt that comes in various color and size")
# =====================product17=============================================
rating51= Rating.create(user_id:u15.id, product_id:product17.id, rating:2)
comment51 = Comment.create(user_id:u15.id, product_id:product17.id, body:"A glowing glass decoration kit that is worth the price")

rating52 = Rating.create(user_id:u16.id, product_id:product17.id, rating:2)
comment52 = Comment.create(user_id:u16.id, product_id:product17.id, body:"A good return for the price we pay for the decoration. Totally worth it")

rating53 = Rating.create(user_id:u18.id, product_id:product17.id, rating:2)
comment53 = Comment.create(user_id:u18.id, product_id:product17.id, body:"I recommend it all. The product is fabolus and the delivery is quick")
# =====================product18 =============================================
rating54 = Rating.create(user_id:u14.id, product_id:product18.id, rating:2.5)
comment54 = Comment.create(user_id:u14.id, product_id:product18.id, body:"A good responsive and high quality joystick for gamer. Higly recommend it")
rating55= Rating.create(user_id:u13.id, product_id:product18.id, rating:4.5)
comment55 = Comment.create(user_id:u13.id, product_id:product18.id, body:"The joystick is really good ")
rating56= Rating.create(user_id:u12.id, product_id:product18.id, rating:4.5)
comment56 = Comment.create(user_id:u12.id, product_id:product18.id, body:"Worth the price. Recommend it for all ")
# =====================product19 =============================================
rating57= Rating.create(user_id:u2.id, product_id:product19.id, rating:4.5)
comment57 = Comment.create(user_id:u2.id, product_id:product19.id, body:"Lighter saber is the perfect gift for the kid")
rating58= Rating.create(user_id:u3.id, product_id:product19.id, rating:4.5)
comment58 = Comment.create(user_id:u3.id, product_id:product19.id, body:"Nice gift  for the starwar fan in reasonable price")
rating59 = Rating.create(user_id:u4.id, product_id:product19.id, rating:4.5)
comment59 = Comment.create(user_id:u4.id, product_id:product19.id, body:"GO for it folks if you are a fan of starwar ")
# =====================product20 =============================================
rating60 = Rating.create(user_id:u17.id, product_id:product20.id, rating:3.5)
comment60 = Comment.create(user_id:u17.id, product_id:product20.id, body:"A good return for the price we pay. Go for it ")
rating61 = Rating.create(user_id:u7.id, product_id:product20.id, rating:3.5)
comment61 = Comment.create(user_id:u7.id, product_id:product20.id, body:" Totally worth it")
rating62 = Rating.create(user_id:u4.id, product_id:product20.id, rating:3.5)
comment62 = Comment.create(user_id:u4.id, product_id:product20.id, body:"I recommend it ")
# =====================product21 =============================================
rating63 = Rating.create(user_id:u7.id, product_id:product21.id, rating:4.5)
comment63 = Comment.create(user_id:u7.id, product_id:product21.id, body:"A good return for the price we pay. Totally worth it")
rating64 = Rating.create(user_id:u9.id, product_id:product21.id, rating:4.5)
comment64 = Comment.create(user_id:u9.id, product_id:product21.id, body:" Totally worth the price ")
rating65 = Rating.create(user_id:u18.id, product_id:product21.id, rating:4.5)
comment65 = Comment.create(user_id:u18.id, product_id:product21.id, body:" Definately worth it")
# =====================product22 =============================================
rating66 = Rating.create(user_id:u13.id, product_id:product22.id, rating:4)
comment66 = Comment.create(user_id:u13.id, product_id:product22.id, body:"It came with the certificate of the quality. Really loved the quality ")
rating67 = Rating.create(user_id:u17.id, product_id:product22.id, rating:4)
comment67 = Comment.create(user_id:u17.id, product_id:product22.id, body:"Perfect gift for anyone. The price is lower than any other place")
rating68 = Rating.create(user_id:u18.id, product_id:product22.id, rating:4)
comment68 = Comment.create(user_id:u18.id, product_id:product22.id, body:"Totally worth it")
rating69 = Rating.create(user_id:u16.id, product_id:product22.id, rating:4)
comment69 = Comment.create(user_id:u16.id, product_id:product22.id, body:"I loved the delivery and packaging")
# =====================product23=============================================
rating70 = Rating.create(user_id:u11.id, product_id:product23.id, rating:4.5)
comment70 = Comment.create(user_id:u11.id, product_id:product23.id, body:"Perfect shine and the highest quality. Recommend it")
rating71 = Rating.create(user_id:u14.id, product_id:product23.id, rating:4.5)
comment72 = Comment.create(user_id:u14.id, product_id:product23.id, body:"Sparking and shiny gem in the unbelievable price ")
rating73 = Rating.create(user_id:u15.id, product_id:product23.id, rating:4.5)
comment73 = Comment.create(user_id:u15.id, product_id:product23.id, body:"A good return for the price we pay. Totally worth it")

rating74= Rating.create(user_id:u2.id, product_id:product24.id, rating:3)
comment74 = Comment.create(user_id:u2.id, product_id:product24.id, body:"Loved the color and the size. A rare pice of gem ")
rating75 = Rating.create(user_id:u1.id, product_id:product24.id, rating:3)
comment75 = Comment.create(user_id:u1.id, product_id:product24.id, body:"The quality is second to none. Recommend it ")
rating76 = Rating.create(user_id:u9.id, product_id:product24.id, rating:3)
comment76 = Comment.create(user_id:u9.id, product_id:product24.id, body:"A great product. Recommend it")
rating78 = Rating.create(user_id:u17.id, product_id:product24.id, rating:3.5)
comment78 = Comment.create(user_id:u17.id, product_id:product24.id, body:"good return for the price we pay. Totally worth it")
# =====================product24 =============================================
rating79 = Rating.create(user_id:u10.id, product_id:product23.id, rating:1.5)
comment79 = Comment.create(user_id:u10.id, product_id:product23.id, body:"Fine gem for big ocassion")
rating80 = Rating.create(user_id:u8.id, product_id:product22.id, rating:1.5)
comment80 = Comment.create(user_id:u8.id, product_id:product22.id, body:"Rare gem in the budget price")
rating81 = Rating.create(user_id:u13.id, product_id:product21.id, rating:2)
comment81 = Comment.create(user_id:u13.id, product_id:product21.id, body:"A good return for the price we pay.Loved  it")
rating82 = Rating.create(user_id:u12.id, product_id:product11.id, rating:2)
comment82 = Comment.create(user_id:u12.id, product_id:product11.id, body:"Nice product and good service ")
rating83 = Rating.create(user_id:u3.id, product_id:product10.id, rating:3)
comment83 = Comment.create(user_id:u3.id, product_id:product10.id, body:" Totally worth the price ")
rating84 = Rating.create(user_id:u4.id, product_id:product11.id, rating:3)
comment84 = Comment.create(user_id:u4.id, product_id:product11.id, body:" Definately worth it")
rating85 = Rating.create(user_id:u7.id, product_id:product21.id, rating:3)
comment85= Comment.create(user_id:u7.id, product_id:product21.id, body:" Loved the product, worth it")
rating86 = Rating.create(user_id:u6.id, product_id:product23.id, rating:3)
comment86 = Comment.create(user_id:u6.id, product_id:product23.id, body:"The product is very good and worth the every penny")
rating87 = Rating.create(user_id:u5.id, product_id:product2.id, rating:3.5)
comment87 = Comment.create(user_id:u5.id, product_id:product2.id, body:"I love the product.But there are better product in the market ")
rating88 = Rating.create(user_id:u7.id, product_id:product1.id, rating:3)
comment88 = Comment.create(user_id:u7.id, product_id:product1.id, body:" A good return for the price we pay.But there are better product for the similar price")

 








