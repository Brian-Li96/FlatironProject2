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
s1 = Shelter.create(name:"Pet Paradise", address: "1116 Furlane Drive, Scranton, PA 15001", hours: "Monday-Saturday 10:00am - 7:00pm", phone_number: "570-252-6555")


#Animal-DOGS
clifford = Animal.create(name: "Clifford", age: 7 , gender: "male",breed: "labrador", personality: "friendly", adopted: true, shelter_id: s1.id, species: "dog", img_url: "https://i.pinimg.com/originals/e2/59/03/e25903134affc51ad868d46b21b18a88.jpg", fee: 150 )
snoopy = Animal.create(name: "Snoopy", age: 3 , gender: "male", breed: "beagle", personality: "sleepy", adopted: true, shelter_id: s1.id, species: "dog", img_url: " ", fee: 120)
scooby = Animal.create(name: "Scooby", age: 2 , gender: "male", breed: "great dane", personality: "shy", adopted: false, shelter_id: s1.id, species: "dog", img_url: " ", fee: 90)
pluto = Animal.create(name: "Pluto", age: 1 , gender: "male", breed: "bloodhound", personality: "goofy", adopted: false, shelter_id: s1.id, species: "dog", img_url: " ", fee: 80)
flower = Animal.create(name: "Flower", age: 1 , gender: "female", breed: "poodle", personality: "energetic", adopted: false, shelter_id: s1.id, species: "dog", img_url: " ", fee: 75)
lady = Animal.create(name: "Lady", age: 5 , gender: "female", breed: "cocker spaniel", personality: "friendly", adopted: false, shelter_id: s1.id, species: "dog", img_url: " ", fee: 60)
jenny = Animal.create(name: "Jenny", age: 4 , gender: "female", breed: "corgi", personality: "friendly", adopted: false, shelter_id: s1.id, species: "dog", img_url: " ", fee: 50)

#Animal-CATS
ollie = Animal.create(name: "Ollie", age: 1 , gender: "male",breed: "ragdoll", personality: "friendly", adopted: false, shelter_id: s1.id, species: "cat", img_url: " ", fee: 80)
max = Animal.create(name: "Max", age: 4 , gender: "male", breed: "siamese", personality: "shy", adopted: false, shelter_id: s1.id, species: "cat", img_url: " ", fee: 50)
mochi = Animal.create(name: "Mochi", age: 2 , gender: "female", breed: "tabby", personality: "energetic", adopted: false, shelter_id: s1.id, species: "cat", img_url: " ", fee: 500)
garfield = Animal.create(name: "Garfield", age: 4 , gender: "male", breed: "Persian tabby", personality: "bossy", adopted: false, shelter_id: s1.id, species: "cat", img_url: " ", fee: 70)
benjamin = Animal.create(name: "Benjamin", age: 3 , gender: "male", breed: "British shorthair", personality: "sleepy", adopted: false, shelter_id: s1.id, species: "cat", img_url: " ", fee: 55)


#Adoption
adopt1 = Adoption.create(person_id: michael.id, animal_id: clifford.id)
adopt2 = Adoption.create(person_id: pam.id, animal_id: snoopy.id)



#Appointments
app1 = Appointment.create(person_id: michael.id, shelter_id: s1.id, date: "01-10-21", time: 1 )
app1 = Appointment.create(person_id: jim.id, shelter_id: s1.id, date: "01-08-21", time: 3 )
app1 = Appointment.create(person_id: pam.id, shelter_id: s1.id, date: "01-07-21", time: 5)