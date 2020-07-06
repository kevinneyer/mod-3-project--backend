# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cocktail.delete_all
Customer.delete_all
Bar.delete_all
Ingredient.delete_all

gin = Ingredient.create(name: "Gin")
vodka = Ingredient.create(name: "Vodka")
whiskey = Ingredient.create(name: "Whiskey")
tequila = Ingredient.create(name: "Teqila")
mezcal = Ingredient.create(name: "Mezcal")
tonic = Ingredient.create(name: "Tonic")
gbeer = Ingredient.create(name: "Ginger Beer")
sour = Ingredient.create(name: "Sour")
soda = Ingredient.create(name: "Club Soda")
lemon = Ingredient.create(name: "Lemon")
lime = Ingredient.create(name: "Lime")
salt = Ingredient.create(name: "Salt")
ice = Ingredient.create(name: "Ice")


gt = Cocktail.create(name: "Gin & Tonic")
ws = Cocktail.create(name: "Whiskey Sour")
mule = Cocktail.create(name: "Moscow Mule")
marg = Cocktail.create(name: "Margarita")
vsoda = Cocktail.create(name: "Vodka Soda")

CocktailIngredient.create(ingredient: gin, cocktail: gt)
CocktailIngredient.create(ingredient: tonic, cocktail: gt)
CocktailIngredient.create(ingredient: whiskey, cocktail: ws)
CocktailIngredient.create(ingredient: sour, cocktail: ws)
CocktailIngredient.create(ingredient: gbeer, cocktail: mule)
CocktailIngredient.create(ingredient: vodka, cocktail: mule)
CocktailIngredient.create(ingredient: lime, cocktail: mule)
CocktailIngredient.create(ingredient: vodka, cocktail: vsoda)
CocktailIngredient.create(ingredient: soda, cocktail: vsoda)
CocktailIngredient.create(ingredient: lime, cocktail: vsoda)
CocktailIngredient.create(ingredient: lime, cocktail: marg)
CocktailIngredient.create(ingredient: tequila, cocktail: marg)
CocktailIngredient.create(ingredient: ice, cocktail: marg)
CocktailIngredient.create(ingredient: salt, cocktail: marg)

