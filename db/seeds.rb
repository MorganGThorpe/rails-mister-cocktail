# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cocktail.destroy_all
Ingredient.destroy_all


cocktail_titles = [
  "Brutalizer",
  "Pink Poppies",
  "Fraulein Gardens",
  "Loca Loca",
  "Brain Feather",
  "Chesnut Shortcut",
  "Poor Choice / Good Evening",
  "Pan Galactic Garggle Blaster"
]
ingredient_names = [
  "Rhum",
  "Honey",
  "Edleweiss Flower",
  "Beer",
  "Blood Orange",
  "Creme de marron",
  "Pastis"
]
dose_descriptions = [
  "A little bit",
  "Juste un doigt",
  "3 cl",
  "A splash"
]

ingredient_names.each do |name|
  Ingredient.create(name: name)
end

cocktail_titles.each do |title|
  cocktail = Cocktail.new
  cocktail.name = title
  cocktail.save
  dose_descriptions.each do |description|
    dose = Dose.new
    dose.description = description
    dose.cocktail = cocktail
    dose.ingredient = Ingredient.all.sample
    dose.save
  end
end

# dose_descriptions.each do |description|
#   dose = Dose.new
#   dose.description = description
#   dose.cocktail = [Cocktail.all.sample]
#   dose.ingredient = Ingredient.all.sample
#   dose.save
#   p dose.errors
# end

# Cocktail.destroy_all

# Cocktail.create(name: "Brutalizer")
# jus_de_froot_loops = Cocktail.new(name: "jus de froot loops")
# jus_de_froot_loops.save
# Cocktail.create(name: "Pink Poppies")
# Cocktail.create(name: "Fraulein Gardens")
# Cocktail.create(name: "Loca Loca")
# Cocktail.create(name: "Brain Feather")
# Cocktail.create(name: "Chestnut Shortcut")
# Cocktail.create(name: "Poor Choice/Good Evening")

# Ingredient.destroy_all
# fruit = Ingredient.new(name: "fruit")
# fruit.save
# Ingredient.create(name: "Rhum")
# Ingredient.create(name: "Honey")
# Ingredient.create(name: "Edelweiss Flower")
# Ingredient.create(name: "Beer")
# Ingredient.create(name: "Blood Orange")
# Ingredient.create(name: "Creme de Maron")
# Ingredient.create(name: "Pastis")

# Dose.destroy_all
# byebug
# nouvel_dose = Dose.new(description: "A little bit")
# nouvel_dose.cocktail = [jus_de_froot_loops]
# nouvel_dose.ingredient = fruit
# nouvel_dose.save
# Dose.create(description: "A little bit more", cocktail: Cocktail.all, ingredient: Ingredient.all.sample)
