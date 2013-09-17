# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


   Forum.create(title: 'FF XIV', description: "The new MMO that's sweeping the nation!")
   Subject.create(forum_id: '1', title: "Crafting", description: "Where the makers gather")
   Subject.create(forum_id: '1', title: "Leveling", description: "How to gain levels")