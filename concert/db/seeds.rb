# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

eventA = Event.create!(artist:"Young Thug", venue: "TD Gardern", city: "Boston", date: "01/07/2017", description:"Thugger perform classic hits such as 'Best Friend'", price: 45)
eventB = Event.create!(artist:"YG", venue: "MSG", city: "NYC", date: "02/03/2017", decription:"YG and the Gang hit up the Big Appe" price: 60)

