# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


goat_ads = GoatAd.create([{ name:'Louloute', age: 6, address: "sci la bergerie, 685 Chemin du Mont Robert, 13290 Aix-en-Provence", longitude: "43.492487", latitude: "5.393259", description: "Nice goat from Aix-en-Provence, has a nice behaviour with humans and can play with kids !", price_per_day: 299, features: "sociable"},
                           { name:'Elianemeusk', age: 8, address: "la ferme d'Agnis, 83870 Signes", longitude: "43.317312", latitude: "5.895125", description: "4 times captain of the year, pilot in chief of spaceship IX, mother of 21 kids", price_per_day: 300, features: "space-traveller"},
                           { name:'John Seguin', age: 11, address: "Ferme les Seguins, 04210 Valensole", longitude: "43.863771", latitude: "5.953728", description: "genuine fighter since 5 generations, golden Medal in Olympics Games in Bejin", price_per_day: 400, features: "fighter"},
                           { name:'Candia', age: 4, address: "Ferme Canteperdrix, 263 chemin de, 83390 Puget-ville", longitude: "43.268315", latitude: "6.098027", description: "Candia can deliver you 235 liters of milk every morning except sunday day off for her, can be useful for large families", price_per_day: 120, features: "milker"},
                           { name:'Gardenoo', age: 4, address: "La chèvrerie du bois d'Amon, 1307 Chemin Départemental 13 Route de Grasse, 06530 Saint-Cézaire-sur-Siagne", longitude: "43.653732", latitude: "6.818203", description: "operationnal for mowing 200 a /day, she can refresh all gardens. She doesn't flowers, only weeds ! Then your grass will be great !", price_per_day: 130, features: "mower"},
                           ])

