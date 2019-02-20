# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Yacht.destroy_all
User.destroy_all
Booking.destroy_all

flo = User.create(first_name: "Florent", last_name: "Horta", email: "florenthorta@yopmail.com", password: "azerty")
nico = User.create(first_name: "Nicolas", last_name: "Essayan", email: "nico@yopmail.com", password: "azerty")
nanard = User.create(first_name: "Bernard", last_name: "Tapie", email: "nanard@yopmail.com", password: "azerty")
patoche = User.create(first_name: "Patrick", last_name: "Balkany", email: "patoche@yopmail.com", password: "azerty")
toto = User.create(first_name: "Laurent", last_name: "Torpelli", email: "lolo@yopmail.com", password: "azerty")
rob = User.create(first_name: "Robert", last_name: "Durant", email: "rob@yopmail.com", password: "azerty")
gerard = User.create(first_name: "Gerard", last_name: "Jean", email: "gege@yopmail.com", password: "azerty")
flip = User.create(first_name: "Bryan", last_name: "Johnson", email: "bryan@yopmail.com", password: "azerty")
g = User.create(first_name: "Gerard", last_name: "Utulus", email: "geg@yopmail.com", password: "azerty")
b = User.create(first_name: "Bertrand", last_name: "Notilus", email: "ber@yopmail.com", password: "azerty")


flo.add_photo("j6jpwfnmc6b4t2wcilvh")
nico.add_photo("h3wil96pe2oagsbwu9ij")
nanard.add_photo("usmclq1ku0r6uhyhravv")
patoche.add_photo("r20u0dtx9qzavfnsptxi")

phocea = Yacht.create(name: "Phocea", port: "Marseille", price: 20000, passengers_capacity: 12, user: flo)
boatboat = Yacht.create(name: "Boat boat", port: "Antibes", price: 30000, passengers_capacity: 18, user: nico)
bonbon = Yacht.create(name: "Bonbon", port: "Monaco", price: 10000, passengers_capacity: 8, user: nanard)
evasion = Yacht.create(name: "L'evasion", port: "St Tropez", price: 12000, passengers_capacity: 10, user: patoche)
redoutable = Yacht.create(name: "Le redoutable", port: "Bonifacio", price: 18000, passengers_capacity: 14, user: nanard)

Booking.create(start_date: "Thu, 21 Feb 2019", end_date: "Sun, 24 Feb 2019", agreed_price: phocea.price, user: nanard, yacht: phocea)
Booking.create(start_date: "Tue, 26 Feb 2019", end_date: "Sun, 3 Mar 2019", agreed_price: phocea.price, user: rob, yacht: phocea)
Booking.create(start_date: "Mon, 18 Mar 2019", end_date: "Sun, 24 Mar 2019", agreed_price: phocea.price, user: b, yacht: phocea)
Booking.create(start_date: "Mon, 22 Apr 2019", end_date: "Sun, 28 Apr 2019", agreed_price: phocea.price, user: patoche, yacht: phocea)
Booking.create(start_date: "Wed, 21 Feb 2020", end_date: "Fri, 23 Feb 2020", agreed_price: evasion.price, user: g, yacht: evasion)
Booking.create(start_date: "Thu, 20 Feb 2020", end_date: "Sat, 20 Feb 2021", agreed_price: bonbon.price, user: nico, yacht: bonbon)
Booking.create(start_date: "Sat, 24 Feb 2020", end_date: "Mon, 26 Feb 2020", agreed_price: redoutable.price, user: flip, yacht: redoutable)

phocea.add_photo("p05gzduq6herum7alx9c")
boatboat.add_photo("zg9th4dvhc43ducqzvhi")
bonbon.add_photo("cvlzoybxjpah2t8hannx")
evasion.add_photo("qwsezkrh9adbvnz2sgo3")
redoutable.add_photo("db7zjfugd1xosf9cguas")
