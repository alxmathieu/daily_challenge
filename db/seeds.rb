# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroy all challenges"
Challenge.destroy_all
puts "Destroy all users"
User.destroy_all


puts "Create a few users"
user1 = User.create(email: "a@email.com", password: 123456)
user2 = User.create(email: "b@email.com", password: 123456)
user3 = User.create(email: "c@email.com", password: 123456)
user4 = User.create(email: "d@email.com", password: 123456)
user5 = User.create(email: "e@email.com", password: 123456)


puts "Create a few challenges"
challenge1 = Challenge.create(title: "Eat something new", description: "try new stuff")
challenge2 = Challenge.create(title: "Try a new sport", description: "something unusual, like curling")
challenge3 = Challenge.create(title: "Talk to someone new", description: "Someone you never met before")
challenge4 = Challenge.create(title: "Code something amazing", description: "Maybe learn a new language")
challenge5 = Challenge.create(title: "try a new game", description: "on a console you already own")
challenge6 = Challenge.create(title: "Try something new in bed", description: "Check with your SO before ;)")
challenge7 = Challenge.create(title: "Don't drink alcohol", description: "your liver will thank you")
challenge8 = Challenge.create(title: "Don't eat meat for the week", description: "The earth will thank you")


puts "Create a few commitments"
commitment1 = Commitment.create(user_id: 1, challenge_id: 1)
commitment2 = Commitment.create(user_id: 2, challenge_id: 4)
commitment3 = Commitment.create(user_id: 1, challenge_id: 7)
commitment = Commitment.create(user_id: 4, challenge_id: 3)
commitment = Commitment.create(user_id: 3, challenge_id: 5)
commitment = Commitment.create(user_id: 3, challenge_id: 6)

