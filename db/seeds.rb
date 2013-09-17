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
   Topic.create(subject_id: '1', title: "Mining", description: "This is fun!")
   Discuss.create(topic_id: '1', title: "Why Am I a NooB?", description: "Help me")
   Post.create(discuss_id: '1', title: "Because", description: "because you suck")