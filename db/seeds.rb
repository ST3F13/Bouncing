# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

GoatAd.destroy_all

file_10 = Rails.root.join("app/assets/images/sociable10.jpeg").open
file_11 =Rails.root.join("app/assets/images/sociable11.jpeg").open
file_12 =Rails.root.join("app/assets/images/sociable12.jpeg").open
file_13 =Rails.root.join("app/assets/images/sociable13.jpeg").open
file_14 =Rails.root.join("app/assets/images/sociable14.jpeg").open

file_20 = Rails.root.join("app/assets/images/space20.jpeg").open
file_21 = Rails.root.join("app/assets/images/space21.jpeg").open
file_22 = Rails.root.join("app/assets/images/space22.jpeg").open
file_23 = Rails.root.join("app/assets/images/space23.jpeg").open
file_24 = Rails.root.join("app/assets/images/space24.jpeg").open

file_30 = Rails.root.join("app/assets/images/fight30.jpeg").open
file_31 = Rails.root.join("app/assets/images/fight31.jpeg").open
file_32 = Rails.root.join("app/assets/images/fight32.jpeg").open
file_33 = Rails.root.join("app/assets/images/fight33.jpeg").open
file_34 = Rails.root.join("app/assets/images/fight34.jpeg").open

file_40 = Rails.root.join("app/assets/images/milk40.jpeg").open
file_41 = Rails.root.join("app/assets/images/milk41.jpeg").open
file_42 = Rails.root.join("app/assets/images/milk42.jpeg").open
file_43 = Rails.root.join("app/assets/images/milk43.jpeg").open
file_44 = Rails.root.join("app/assets/images/milk44.jpeg").open

file_50 = Rails.root.join("app/assets/images/mow50.jpeg").open
file_51 = Rails.root.join("app/assets/images/mow51.jpeg").open
file_52 = Rails.root.join("app/assets/images/mow52.jpeg").open
file_53 = Rails.root.join("app/assets/images/mow53.jpeg").open
file_54 = Rails.root.join("app/assets/images/mow54.jpeg").open

goat_ad1 = GoatAd.create({ name:'Louloute', age: 6, address: "sci la bergerie, 685 Chemin du Mont Robert, 13290 Aix-en-Provence", latitude:"43.492487" , longitude: "5.393259", description: "Nice goat from Aix-en-Provence, has a nice behaviour with humans and can play with kids !", price_per_day: 299, features: "sociable", start_available:"07/03/2021", end_available:"12/24/2021"})
goat_ad2 = GoatAd.create({ name:'Elianemeusk', age: 8, address: "la ferme d'Agnis, 83870 Signes",  latitude:"43.317312", longitude: "5.895125", description: "4 times captain of the year, pilot in chief of spaceship IX, mother of 21 kids", price_per_day: 300, features: "space-traveller", start_available:"07/03/2021", end_available:"12/24/2021"})
goat_ad3 = GoatAd.create({ name:'John Seguin', age: 11, address: "Ferme les Seguins, 04210 Valensole", latitude:"43.863771" , longitude: "5.953728",description: "genuine fighter since 5 generations, golden Medal in Olympics Games in Bejin", price_per_day: 400, features: "fighter", start_available:"07/03/2021", end_available:"12/24/2021"})
goat_ad4 = GoatAd.create({ name:'Candia', age: 4, address: "Ferme Canteperdrix, 263 chemin de, 83390 Puget-ville", latitude: "43.268315",longitude: "6.098027", description: "Candia can deliver you 235 liters of milk every morning except sunday day off for her, can be useful for large families", price_per_day: 120, features: "milker", start_available:"07/03/2021", end_available:"12/24/2021"})
goat_ad5 = GoatAd.create({ name:'Gardenoo', age: 4, address: "La chèvrerie du bois d'Amon, 1307 Chemin Départemental 13 Route de Grasse, 06530 Saint-Cézaire-sur-Siagne", latitude: "43.653732" , longitude: "6.818203", description: "operationnal for mowing 200 a /day, she can refresh all gardens. She doesn't flowers, only weeds ! Then your grass will be great !", price_per_day: 130, features: "mower", start_available:"07/03/2021", end_available:"12/24/2021"})

goat_ad1.medias.attach(io: file_10, filename: 'sociable10.jpeg', content_type: 'image/jpeg')
goat_ad1.medias.attach(io: file_11, filename: 'sociable11.jpeg', content_type: 'image/jpeg')
goat_ad1.medias.attach(io: file_12, filename: 'sociable12.jpeg', content_type: 'image/jpeg')
goat_ad1.medias.attach(io: file_13, filename: 'sociable13.jpeg', content_type: 'image/jpeg')
goat_ad1.medias.attach(io: file_14, filename: 'sociable14.jpeg', content_type: 'image/jpeg')
goat_ad1.save

goat_ad2.medias.attach(io: file_20, filename: 'space20.jpeg', content_type: 'image/jpeg')
goat_ad2.medias.attach(io: file_21, filename: 'space21.jpeg', content_type: 'image/jpeg')
goat_ad2.medias.attach(io: file_22, filename: 'space22.jpeg', content_type: 'image/jpeg')
goat_ad2.medias.attach(io: file_23, filename: 'space23.jpeg', content_type: 'image/jpeg')
goat_ad2.medias.attach(io: file_24, filename: 'space24.jpeg', content_type: 'image/jpeg')
goat_ad2.save

goat_ad3.medias.attach(io: file_30, filename: 'fight30.jpeg', content_type: 'image/jpeg')
goat_ad3.medias.attach(io: file_31, filename: 'fight31.jpeg', content_type: 'image/jpeg')
goat_ad3.medias.attach(io: file_32, filename: 'fight32.jpeg', content_type: 'image/jpeg')
goat_ad3.medias.attach(io: file_33, filename: 'fight33.jpeg', content_type: 'image/jpeg')
goat_ad3.medias.attach(io: file_34, filename: 'fight34.jpeg', content_type: 'image/jpeg')
goat_ad3.save

goat_ad4.medias.attach(io: file_40, filename: 'milk40.jpeg', content_type: 'image/jpeg')
goat_ad4.medias.attach(io: file_41, filename: 'milk41.jpeg', content_type: 'image/jpeg')
goat_ad4.medias.attach(io: file_42, filename: 'milk42.jpeg', content_type: 'image/jpeg')
goat_ad4.medias.attach(io: file_43, filename: 'milk43.jpeg', content_type: 'image/jpeg')
goat_ad4.medias.attach(io: file_44, filename: 'milk44.jpeg', content_type: 'image/jpeg')
goat_ad4.save

goat_ad5.medias.attach(io: file_50, filename: 'mow50.jpeg', content_type: 'image/jpeg')
goat_ad5.medias.attach(io: file_51, filename: 'mow51.jpeg', content_type: 'image/jpeg')
goat_ad5.medias.attach(io: file_52, filename: 'mow52.jpeg', content_type: 'image/jpeg')
goat_ad5.medias.attach(io: file_53, filename: 'mow53.jpeg', content_type: 'image/jpeg')
goat_ad5.medias.attach(io: file_54, filename: 'mow54.jpeg', content_type: 'image/jpeg')
goat_ad5.save

