# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

projectA = Project.create!(name: "Ironhack")
projectB = Project.create!(name: "PfChangs", description:"jscbjkn" )
projectC = Project.create!(name: "Wendys")
projectD = Project.create!(name: "PapaJohns")
projectE = Project.create!(name: "BudoVideos")
projectF = Project.create!(name: "PoloRL")
projectG = Project.create!(name: "KidsContigo")
projectH = Project.create!(name: "ElonMuskMars")
projectI = Project.create!(name: "Patagonia")
projectJ = Project.create!(name: "Nike")

TimeEntry.create!(hours: 2, minutes:30, comments:"blah", date: Date.today, project_id: projectA.id)


	projectA.time_entries.create!(hours: 2, minutes:30, comments:"blah", date: Date.today)

projectC.time_entries.create!(hours: 3, minutes:45, comments:"Wendys Stuff", date: Date.today)
projectC.time_entries.create!(hours: 6, minutes:45, comments:"Wendys App", date: Date.today - 3.days)
projectC.time_entries.create!(hours: 1, minutes:0, comments:"Wendys App", date: Date.today - 5.days)

projectD.time_entries.create!(hours: 3, minutes:45, comments:"PapaJohns Stuff", date: Date.today)
projectE.time_entries.create!(hours: 6, minutes:45, comments:"BudoVideos App", date: Date.today - 6.days)
projectF.time_entries.create!(hours: 1, minutes:0, comments:"PoloRL App", date: Date.today - 10.days)