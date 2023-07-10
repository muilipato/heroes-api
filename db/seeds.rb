# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb

# Create some heroes
Hero.create(name: "Kamala Khan", super_name: "Ms. Marvel")
Hero.create(name: "Doreen Green", super_name: "Squirrel Girl")
Hero.create(name: "Bruce Wayne", super_name: "Batman")
Hero.create(name: "Clark Kent", super_name: "Superman")
Hero.create(name: "Tony Stark", super_name: "Iron Man")

# Create some powers
Power.create(name: "super strength", description: "gives the wielder super-human strengths")
Power.create(name: "flight", description: "gives the wielder the ability to fly through the skies at supersonic speed")
Power.create(name: "heat vision", description: "emits beams of intense heat from the eyes")
Power.create(name: "genius intellect", description: "possesses exceptional intelligence and inventiveness")

# Create associations between heroes and powers
HeroPower.create(hero: Hero.first, power: Power.first, strength: "Strong")
HeroPower.create(hero: Hero.first, power: Power.second, strength: "Average")
HeroPower.create(hero: Hero.fourth, power: Power.first, strength: "Strong")
HeroPower.create(hero: Hero.fifth, power: Power.fourth, strength: "Average")
