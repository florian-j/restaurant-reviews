# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.create(name: "Epicure, Bristol", address: "112 r. Fg St-Honoré 75008", phonenumber: 153434340, category: "chinese")
Restaurant.create(name: "L'atelier de Joel Robuchon", address: "133 av. des Champs-Élysées 75008", phonenumber: 147237575, category: "chinese")

Review.create()