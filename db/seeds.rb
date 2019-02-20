# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying all...."

Yacht.destroy_all
User.destroy_all
Booking.destroy_all

puts "Creating users...."

flo = User.create(first_name: "Florent", last_name: "Horta", email: "florenthorta@yopmail.com", password: "azerty")
nico = User.create(first_name: "Nicolas", last_name: "Essayan", email: "nico@yopmail.com", password: "azerty")
nanard = User.create(first_name: "Bernard", last_name: "Tapie", email: "nanard@yopmail.com", password: "azerty")
patoche = User.create(first_name: "Patrick", last_name: "Balkany", email: "patoche@yopmail.com", password: "azerty")
toto = User.create(first_name: "Laurent", last_name: "Torpelli", email: "lolo@yopmail.com", password: "azerty")
rob = User.create(first_name: "Robert", last_name: "Durant", email: "rob@yopmail.com", password: "azerty")
gerard = User.create(first_name: "Gerard", last_name: "Jean", email: "gege@yopmail.com", password: "azerty")
jenny = User.create(first_name: "Jenny", last_name: "Johnson", email: "jenny@yopmail.com", password: "azerty")
tania = User.create(first_name: "Tania", last_name: "Utulus", email: "tania@yopmail.com", password: "azerty")
chun = User.create(first_name: "Chun", last_name: "Lee", email: "chun@yopmail.com", password: "azerty")

flo.add_photo("j6jpwfnmc6b4t2wcilvh")
nico.add_photo("h3wil96pe2oagsbwu9ij")
nanard.add_photo("usmclq1ku0r6uhyhravv")
patoche.add_photo("r20u0dtx9qzavfnsptxi")
toto.add_photo("sd4dylepzexg2wonkutx")
rob.add_photo("qqjcjqypihbrtnszqotu")
gerard.add_photo("oquxoo1mqekkgfjy63xb")
jenny.add_photo("om75pbag5zcodboymttq")
tania.add_photo("fgn3xj4ugo7illlpf1gc")
chun.add_photo("g1lrqr1fchjjfoaze9ei")

puts "Creating yachts...."

phocea = Yacht.create(name: "Phocea", port: "Marseille", price: 20000, passengers_capacity: 12, user: flo)
boatboat = Yacht.create(name: "Boat boat", port: "Antibes", price: 30000, passengers_capacity: 18, user: nico)
bonbon = Yacht.create(name: "Bonbon", port: "Monaco", price: 10000, passengers_capacity: 8, user: nanard)
evasion = Yacht.create(name: "L'evasion", port: "St Tropez", price: 12000, passengers_capacity: 10, user: patoche)
redoutable = Yacht.create(name: "Le redoutable", port: "Bonifacio", price: 18000, passengers_capacity: 14, user: nanard)
highfive = Yacht.create(name: "Le highfive", port: "Long beach", price: 22000, passengers_capacity: 19, user: tania)
daykiry = Yacht.create(name: "Le daykiry", port: "Nagoya", price: 24000, passengers_capacity: 11, user: patoche)
pussypussylove = Yacht.create(name: "Le pussypussylove", port: "Rio de Janeiro", price: 31000, passengers_capacity: 9, user: chun)
calypso = Yacht.create(name: "Le calypso", port: "Rotterdam", price: 21000, passengers_capacity: 10, user: nico)
nautilus = Yacht.create(name: "Le nautilus", port: "Cap town", price: 25000, passengers_capacity: 11, user: flo)
effroyable = Yacht.create(name: "Le effroyable", port: "Lisbonne", price: 21000, passengers_capacity: 14, user: patoche)
mistral = Yacht.create(name: "Le mistral", port: "Fos sur mer", price: 20000, passengers_capacity: 19, user: nanard)

phocea.add_photo("p05gzduq6herum7alx9c")
boatboat.add_photo("zg9th4dvhc43ducqzvhi")
bonbon.add_photo("cvlzoybxjpah2t8hannx")
evasion.add_photo("qwsezkrh9adbvnz2sgo3")
redoutable.add_photo("db7zjfugd1xosf9cguas")
highfive.add_photo("mswkw9vp5hxukxkbe8nu")
daykiry.add_photo("xuke0lcowilezh4d6moe")
pussypussylove.add_photo("t3ypxvgukijwpditydpv")
calypso.add_photo("zat1wghrair8tqutemcl")
nautilus.add_photo("qab1ubfipgq7jkzimoa9")
effroyable.add_photo("uprbxjscbfs0zklgnwwq")
mistral.add_photo("ywcg9oepcvg0poy4ui4y")

puts "Creating bookings...."

Booking.create(start_date: "Thu, 21 Feb 2019", end_date: "Sun, 24 Feb 2019", agreed_price: phocea.price, user: nanard, yacht: phocea)
Booking.create(start_date: "Tue, 26 Feb 2019", end_date: "Sun, 3 Mar 2019", agreed_price: phocea.price, user: rob, yacht: phocea)
Booking.create(start_date: "Mon, 18 Mar 2019", end_date: "Sun, 24 Mar 2019", agreed_price: phocea.price, user: jenny, yacht: phocea)
Booking.create(start_date: "Mon, 22 Apr 2019", end_date: "Sun, 28 Apr 2019", agreed_price: phocea.price, user: patoche, yacht: phocea)
Booking.create(start_date: "Wed, 21 Feb 2020", end_date: "Fri, 23 Feb 2020", agreed_price: evasion.price, user: gerard, yacht: evasion)
Booking.create(start_date: "Thu, 20 Feb 2020", end_date: "Sat, 20 Feb 2021", agreed_price: bonbon.price, user: nico, yacht: bonbon)
Booking.create(start_date: "Sat, 24 Feb 2020", end_date: "Mon, 26 Feb 2020", agreed_price: redoutable.price, user: tania, yacht: redoutable)

puts "all seeded!!!!"
