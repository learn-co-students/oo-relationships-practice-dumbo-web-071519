require_relative '../config/environment.rb'

# ! Excerise 1: Airbnb
# require_relative '../app/models/concerns/counter.rb'
# require_relative '../app/models/airbnb/guest.rb'
# require_relative '../app/models/airbnb/listing.rb'
# require_relative '../app/models/airbnb/trip.rb'

# sara = Guest.new("Sara")
# lex = Guest.new("Lex")

# new_york = Listing.new("New York City")
# houston = Listing.new("Houston")
# toronto = Listing.new("Toronto")

# trip1 = Trip.new(toronto, sara)
# trip2 = Trip.new(houston, sara)
# trip3 = Trip.new(new_york, sara)
# trip4 = Trip.new(new_york, lex)
# trip5 = Trip.new(houston, lex)
# trip6 = Trip.new(houston, lex)



# ! Exercise 2: Bakery
require_relative '../app/models/bakery/bakery.rb'
require_relative '../app/models/bakery/desserts.rb'
require_relative '../app/models/bakery/ingredients.rb'

expresso = Bakery.new("Expresso Cup Bakery")
cubed = Bakery.new("Cubed Bakery")
wonderland = Bakery.new("Alice in Wonderland Bakery")

scones1 = Dessert.new("scone", wonderland)
scones2 = Dessert.new("scone", expresso)
crossiant1 = Dessert.new("crossiant", cubed)
crossiant2 = Dessert.new("crossiant", wonderland)
pie1 = Dessert.new("pie", expresso)
cake1 = Dessert.new("cake", expresso)
brownie = Dessert.new("brownie", wonderland)

flour1 = Ingredient.new("flour", scones1, 150)
flour2 = Ingredient.new("flour", scones2, 150)
flour3 = Ingredient.new("flour", crossiant1, 150)
flour4 = Ingredient.new("flour", crossiant2, 150)

butter1 = Ingredient.new("butter", crossiant1, 300)
butter2 = Ingredient.new("butter", crossiant2, 300)
butter3 = Ingredient.new("butter", scones1, 300)
butter4 = Ingredient.new("butter", scones2, 300)

milk1 = Ingredient.new("milk", cake1, 450)
milk2 = Ingredient.new("milk", brownie, 450)

strawberries = Ingredient.new("strawberries", pie1, 200)

frosting = Ingredient.new("frosting", cake1, 1000)

chocolate = Ingredient.new("brownie", brownie, 800)


def reload
  load 'config/environment.rb'
end

Pry.start
