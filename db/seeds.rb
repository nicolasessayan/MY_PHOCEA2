# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying all...."

Booking.destroy_all
Yacht.destroy_all
Port.destroy_all
User.destroy_all

puts "Creating ports...."

monaco = Port.create(name: "Port Hercule", address: "Monaco")
barcelona = Port.create(name: "Marina Vela", address: "Barcelona")
kotor = Port.create(name: "Marina Cattaro", address: "Kotor")
limassol = Port.create(name: "Limassol Marina", address: "Limassol")
abudhabi = Port.create(name: "Yas Marina", address: "Abu Dhabi")
virgin = Port.create(name: "Yacht Haven Grande", address: "Virgin Islands")
miami = Port.create(name: "Boca Raton Marina", address: "Miami Beach")
capcod = Port.create(name: "Hyannis Marina", address: "Cape Cod")
macao = Port.create(name: "Pousada Marina", address: "Macao")
male = Port.create(name: "Maldives Marina Berthing", address: "Maldives")
mauritius = Port.create(name: "La Balise Marina", address: "Mauritius")
capetown = Port.create(name: "V&A Waterfront", address: "Cape Town")
rio = Port.create(name: "Jet Paradise Marine & Club", address: "Rio de Janeiro")
longbeach = Port.create(name: "Rainbow Harbor", address: "Long Beach")

monaco.add_photo("tgsipjueyjjmzr7grr17")
barcelona.add_photo("ehesb5w7mih8qmykmvbg")
kotor.add_photo("gginuzi2qxxdjhpebrty")
limassol.add_photo("xhma9gckcoxkj89q60f8")
abudhabi.add_photo("o8nip0dkclrali8shdk8")
virgin.add_photo("zordcwibxov0h3fog34f")
miami.add_photo("tfrjdxxfw4lswsvdujyo")
capcod.add_photo("gginuzi2qxxdjhpebrty")
macao.add_photo("poybzfjekwv9l8u8r4xd")
male.add_photo("ymtyu6e5loevq30mikx6")
mauritius.add_photo("zordcwibxov0h3fog34f")
capetown.add_photo("kt9wzpvwbcoevjkesqxw")
rio.add_photo("xekh1qfdwr7jnkbwfnkm")
longbeach.add_photo("xhma9gckcoxkj89q60f8")

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

phocea = Yacht.create(name: "Phocea", port: monaco, price: 20000, passengers_capacity: 12, user: flo)
phocea.add_photos("dztnmtzbh1fkkyyervgu", "hgre7skcqadvmiwz9lee", "jqhlh1nu7o2lcoc2asqt")
calypso = Yacht.create(name: "Le calypso", port: male, price: 21000, passengers_capacity: 10, user: nico)
calypso.add_photos("zat1wghrair8tqutemcl", "hgre7skcqadvmiwz9lee", "jqhlh1nu7o2lcoc2asqt")

boatboat = Yacht.create(name: "Boat boat", port: monaco, price: 30000, passengers_capacity: 18, user: nico)
bonbon = Yacht.create(name: "Bonbon", port: monaco, price: 10000, passengers_capacity: 8, user: nanard)
evasion = Yacht.create(name: "L'evasion", port: virgin, price: 12000, passengers_capacity: 10, user: patoche)
redoutable = Yacht.create(name: "Le redoutable", port: miami, price: 18000, passengers_capacity: 14, user: nanard)
highfive = Yacht.create(name: "Le highfive", port: capcod, price: 22000, passengers_capacity: 19, user: tania)
daykiry = Yacht.create(name: "Le daykiry", port: macao, price: 24000, passengers_capacity: 11, user: patoche)
pussypussylove = Yacht.create(name: "Le pussypussylove", port: rio, price: 31000, passengers_capacity: 9, user: chun)
nautilus = Yacht.create(name: "Le nautilus", port: longbeach, price: 25000, passengers_capacity: 11, user: flo)
effroyable = Yacht.create(name: "Le effroyable", port: mauritius, price: 21000, passengers_capacity: 14, user: patoche)
mistral = Yacht.create(name: "Le mistral", port: abudhabi, price: 20000, passengers_capacity: 19, user: nanard)

boatboat.add_photos("zg9th4dvhc43ducqzvhi", "hgre7skcqadvmiwz9lee", "jqhlh1nu7o2lcoc2asqt")
bonbon.add_photos("cvlzoybxjpah2t8hannx", "hgre7skcqadvmiwz9lee", "jqhlh1nu7o2lcoc2asqt")
evasion.add_photos("qwsezkrh9adbvnz2sgo3", "hgre7skcqadvmiwz9lee", "jqhlh1nu7o2lcoc2asqt")
redoutable.add_photos("db7zjfugd1xosf9cguas", "hgre7skcqadvmiwz9lee", "jqhlh1nu7o2lcoc2asqt")
highfive.add_photos("mswkw9vp5hxukxkbe8nu", "hgre7skcqadvmiwz9lee", "jqhlh1nu7o2lcoc2asqt")
daykiry.add_photos("xuke0lcowilezh4d6moe", "hgre7skcqadvmiwz9lee", "jqhlh1nu7o2lcoc2asqt")
pussypussylove.add_photos("t3ypxvgukijwpditydpv", "hgre7skcqadvmiwz9lee", "jqhlh1nu7o2lcoc2asqt")
nautilus.add_photos("qab1ubfipgq7jkzimoa9", "hgre7skcqadvmiwz9lee", "jqhlh1nu7o2lcoc2asqt")
effroyable.add_photos("uprbxjscbfs0zklgnwwq", "hgre7skcqadvmiwz9lee", "jqhlh1nu7o2lcoc2asqt")
mistral.add_photos("ywcg9oepcvg0poy4ui4y", "hgre7skcqadvmiwz9lee", "jqhlh1nu7o2lcoc2asqt")

puts "Creating bookings...."

Booking.create(start_date: "Thu, 21 Feb 2019", end_date: "Sun, 24 Feb 2019", agreed_price: phocea.price, user: nanard, yacht: phocea)
Booking.create(start_date: "Tue, 26 Feb 2019", end_date: "Sun, 3 Mar 2019", agreed_price: phocea.price, user: rob, yacht: phocea)
Booking.create(start_date: "Mon, 18 Mar 2019", end_date: "Sun, 24 Mar 2019", agreed_price: phocea.price, user: jenny, yacht: phocea)
Booking.create(start_date: "Mon, 22 Apr 2019", end_date: "Sun, 28 Apr 2019", agreed_price: phocea.price, user: patoche, yacht: phocea)
Booking.create(start_date: "Wed, 21 Feb 2020", end_date: "Fri, 23 Feb 2020", agreed_price: evasion.price, user: gerard, yacht: evasion)
Booking.create(start_date: "Thu, 20 Feb 2020", end_date: "Sat, 20 Feb 2021", agreed_price: bonbon.price, user: nico, yacht: bonbon)
Booking.create(start_date: "Sat, 24 Feb 2020", end_date: "Mon, 26 Feb 2020", agreed_price: redoutable.price, user: tania, yacht: redoutable)

puts "all seeded!!!!"
