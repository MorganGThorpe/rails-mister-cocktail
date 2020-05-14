# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cocktail.destroy_all

Cocktail.create(name: "Brutalizer")
Cocktail.create(name: "Pink Poppies")
Cocktail.create(name: "Fraulein Gardens")
Cocktail.create(name: "Loca Loca")
Cocktail.create(name: "Brain Feather")
Cocktail.create(name: "Chestnut Shortcut")
Cocktail.create(name: "Poor Choice/Good Evening")

byebug

Ingredient.destroy_all

Ingredient.create(name: "Rhum")
Ingredient.create(name: "Honey")
Ingredient.create(name: "Edelweiss Flower")
Ingredient.create(name: "Beer")
Ingredient.create(name: "Blood Orange")
Ingredient.create(name: "Creme de Maron")
Ingredient.create(name: "Pastis")

Dose.destroy_all

Dose.create(description: "A little bit", cocktail: Cocktail.all, ingredient: Ingredient.all.sample)
Dose.create(description: "A little bit more", cocktail: Cocktail.all, ingredient: Ingredient.all.sample)
