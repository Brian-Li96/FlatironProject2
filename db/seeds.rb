# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Person.destroy_all
Animal.destroy_all
Appointment.destroy_all
Adoption.destroy_all

#People
michael = Person.create(email: "Michael@office.com", password: "office111", first_name: "Michael", last_name: "Scott")
pam = Person.create(email: "Pam@office.com", password: "office222", first_name: "Pam", last_name: "Halpert")
dwight = Person.create(email: "Dwight@office.com", password: "office333", first_name: "Dwight", last_name: "Schrute")
angela = Person.create(email: "Angela@office.com", password: "office444", first_name: "Angela", last_name: "Schrute")
holly = Person.create(email: "Holly@office.com", password: "office555", first_name: "Holly", last_name: "Scott")
jim = Person.create(email: "Jim@office.com", password: "office777", first_name: "Jim", last_name: "Halpert")

#Shelter #name, #address, #phone-number 
s1 = Shelter.create(name:"New Beginnings", address: "1116 Furlane Drive, Scranton, PA 15001", hours: "Monday-Saturday 10:00am - 7:00pm", phone_number: "570-252-6555")


#Animal-DOGS
clifford = Animal.create(name: "Clifford", age: 2 , gender: "male",breed: "labrador", personality: "playful", adopted: true, shelter_id: s1.id, species: "dog", img_url: "https://i.pinimg.com/originals/e2/59/03/e25903134affc51ad868d46b21b18a88.jpg", fee: 150 )
snoopy = Animal.create(name: "Snoopy", age: 3 , gender: "male", breed: "beagle", personality: "laidback", adopted: true, shelter_id: s1.id, species: "dog", img_url: "https://i.pinimg.com/originals/df/11/aa/df11aa88da9b33e8ae9c1abd4ac1ed9b.jpg ", fee: 90)
scooby = Animal.create(name: "Scooby", age: 2 , gender: "male", breed: "great dane", personality: "shy", adopted: false, shelter_id: s1.id, species: "dog", img_url: "https://i.pinimg.com/originals/89/89/4d/89894d5f7cc895f5d6dc24f642afa7f9.jpg", fee: 90)
pluto = Animal.create(name: "Pluto", age: 3 , gender: "male", breed: "bloodhound", personality: "friendly", adopted: false, shelter_id: s1.id, species: "dog", img_url: "https://i.pinimg.com/originals/21/9b/a0/219ba0040b2bbd19108f2d47c85d8c7e.jpg", fee: 80)
flower = Animal.create(name: "Flower", age: 3 , gender: "female", breed: "poodle", personality: "energetic", adopted: false, shelter_id: s1.id, species: "dog", img_url: "https://i.pinimg.com/originals/af/6e/b3/af6eb39b2c64e1b51ce433c558eb5fb7.jpg", fee: 75)
lady = Animal.create(name: "Lady", age: 5 , gender: "female", breed: "cocker spaniel", personality: "playful", adopted: false, shelter_id: s1.id, species: "dog", img_url: "https://i.pinimg.com/originals/61/2b/b1/612bb1589f8c094b369822056f1963f0.jpg", fee: 60)
jenny = Animal.create(name: "Jenny", age: 4 , gender: "female", breed: "corgi", personality: "friendly", adopted: false, shelter_id: s1.id, species: "dog", img_url: "https://i.pinimg.com/736x/2a/e9/a4/2ae9a40b4363e74554dcae603cd8356d.jpg", fee: 50)
spot = Animal.create(name: "Spot", age: 2 , gender: "male", breed: "dalmation", personality: "mischievous", adopted: false, shelter_id: s1.id, species: "dog", img_url: "https://i.pinimg.com/736x/21/12/a1/2112a17ecadb605fe549805ae60b8511.jpg", fee: 50)
lassie = Animal.create(name: "Lassie", age: 4 , gender: "female", breed: "border collie", personality: "playful", adopted: false, shelter_id: s1.id, species: "dog", img_url: "https://celticmoonbc.weebly.com/uploads/6/2/7/8/62784141/31949901-10214376425057808-1045677021629251584-n_orig.jpg", fee: 60)
togo = Animal.create(name: "Togo", age: 2 , gender: "male", breed: "husky", personality: "energetic", adopted: false, shelter_id: s1.id, species: "dog", img_url: "https://preview.redd.it/guxo1r7tnrd11.jpg?auto=webp&s=2ae3a2a439bbf721d14dd3ac0724809ec7c3bc94", fee: 90)
rex = Animal.create(name: "Rex", age: 5 , gender: "male", breed: "doberman pinscher", personality: "energetic", adopted: false, shelter_id: s1.id, species: "dog", img_url: "https://dpca.org/wp-content/uploads/fb_2019-06-15T14-08-28_2411187228924808.jpg", fee: 90)
charlie = Animal.create(name: "Charlie", age: 2 , gender: "male", breed: "shiba inu", personality: "energetic", adopted: false, shelter_id: s1.id, species: "dog", img_url: "https://photos.puppyspot.com/8/listing/639508/photo/5530551_large-resize.jpg", fee: 90)
lucy = Animal.create(name: "Lucy", age: 3 , gender: "female", breed: "yorkie", personality: "energetic", adopted: false, shelter_id: s1.id, species: "dog", img_url: "https://i.pinimg.com/originals/75/98/f0/7598f07941f8f240c7d658c81fe7e669.jpg", fee: 90)
goldie = Animal.create(name: "Goldie", age: 2 , gender: "female", breed: "mini golden retriever", personality: "playful", adopted: false, shelter_id: s1.id, species: "dog", img_url: "https://i.pinimg.com/originals/0c/e8/cd/0ce8cddcbbb19d11199fa8ae2d81927f.jpg", fee: 180)

#Animal-CATS
ollie = Animal.create(name: "Ollie", age: 1 , gender: "male",breed: "ragdoll", personality: "friendly", adopted: false, shelter_id: s1.id, species: "cat", img_url: "https://www.thesprucepets.com/thmb/67_9vCRzb_iGjXBDNYT8sNI3epk=/1185x1080/filters:no_upscale():max_bytes(150000):strip_icc()/56242993_352522172040814_8005034287740231326_n-b4d042a7fa974a83a18d4c914e60a150.jpg", fee: 80)
max = Animal.create(name: "Max", age: 4 , gender: "male", breed: "siamese", personality: "shy", adopted: false, shelter_id: s1.id, species: "cat", img_url: "https://i.pinimg.com/originals/c5/0c/b3/c50cb35322ce2fb5e7bb234b1ff8c7e9.jpg", fee: 50)
betty = Animal.create(name: "Mochi", age: 2 , gender: "female", breed: "tabby", personality: "energetic", adopted: false, shelter_id: s1.id, species: "cat", img_url: "https://i.pinimg.com/236x/06/89/d2/0689d2c196d0a26f74445bb171615d08--orange-kittens-white-kittens.jpg", fee: 50)
garfield = Animal.create(name: "Garfield", age: 4 , gender: "male", breed: "Persian tabby", personality: "mischievous", adopted: false, shelter_id: s1.id, species: "cat", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Big_Fat_Red_Cat.jpg/1280px-Big_Fat_Red_Cat.jpg", fee: 30)
benjamin = Animal.create(name: "Benjamin", age: 1 , gender: "male", breed: "British shorthair", personality: "laidback", adopted: false, shelter_id: s1.id, species: "cat", img_url: "https://images.squarespace-cdn.com/content/v1/525a1ae4e4b0b7382f191ee4/1527746265982-2PIBO5N32RF1WKTYACYI/ke17ZwdGBToddI8pDm48kLkXF2pIyv_F2eUT9F60jBl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iyqMbMesKd95J-X4EagrgU9L3Sa3U8cogeb0tjXbfawd0urKshkc5MgdBeJmALQKw/British-Shorthair-kitten-cute-squat-3000x2000.jpg?format=2500w", fee: 55)
galapagos = Animal.create(name: "Galapagos", age: 1 , gender: "male", breed: "sphynx", personality: "laidback", adopted: false, shelter_id: s1.id, species: "cat", img_url: "https://64.media.tumblr.com/7e143e42ee8995371861cc985bc1723d/tumblr_mh459vLgvu1rmjbi4o1_500.jpg", fee: 55)
raja = Animal.create(name: "Raja", age: 1 , gender: "female", breed: "bengal", personality: "playful", adopted: false, shelter_id: s1.id, species: "cat", img_url: "https://people.ucsc.edu/~amvalenc/bengal%20kitten.jpg", fee: 500)
zeus = Animal.create(name: "Zeus", age: 5 , gender: "male", breed: "maine coon", personality: "", adopted: false, shelter_id: s1.id, species: "cat", img_url: "https://mainecoonexpert.com/wp-content/uploads/2018/07/mainecoonsize1.jpg", fee: 45)



#Adoption
adopt1 = Adoption.create(person_id: michael.id, animal_id: clifford.id)
adopt2 = Adoption.create(person_id: pam.id, animal_id: snoopy.id)



#Appointments
app1 = Appointment.create(person_id: michael.id, shelter_id: s1.id, date: "01-10-21", time: 1, animal_id: snoopy.id )
app1 = Appointment.create(person_id: jim.id, shelter_id: s1.id, date: "01-08-21", time: 3, animal_id: zeus.id )
app1 = Appointment.create(person_id: pam.id, shelter_id: s1.id, date: "01-07-21", time: 5, animal_id: flower.id)