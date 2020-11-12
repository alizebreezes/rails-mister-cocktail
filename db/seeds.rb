# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

uri = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

# this is a string
drinks_info = open(uri).read
# result_hash is an array with hash
result_hash = JSON.parse(drinks_info)
# the result_hash["drinks"].class is an array again

ingredients_array = result_hash["drinks"].sample(15)

ingredients_array.each do |hash|
  Ingredient.create(name: hash['strIngredient1'])
end

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")

