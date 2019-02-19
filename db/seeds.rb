# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Yacht.destroy_all
# Bookig.destroy_all

flo = User.create(email: "florenthorta@yopmail.com", password: "azerty")
nico = User.create(email: "nico@yopmail.com", password: "azerty")
beber = User.create(email: "beber@yopmail.com", password: "azerty")
patou = User.create(email: "patoch@yopmail.com", password: "azerty")

Yacht.create(name: "Phocea", port: "Marseille", price: 20000, passengers_capacity: 12, user: flo)
Yacht.create(name: "Boat boat", port: "Antibes", price: 30000, passengers_capacity: 18, user: nico)
Yacht.create(name: "Bonbon", port: "Monaco", price: 10000, passengers_capacity: 8, user: beber)
Yacht.create(name: "L'evasion", port: "St Tropez", price: 12000, passengers_capacity: 10, user: patou)
Yacht.create(name: "Le redoutable", port: "Bonifacio", price: 18000, passengers_capacity: 14, user: beber)
