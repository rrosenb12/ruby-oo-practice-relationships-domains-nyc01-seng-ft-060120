require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jaws = Movie.new("jaws")
mean_girls = Movie.new("mean girls")
the_parent_trap = Movie.new("the parent trap")
mean_girls_show = Show.new("mean girls show")
mean_girls2 = Movie.new("mean girls 2")
mean_girls3 = Movie.new("mean girls 3")
bojack = Show.new("bojack")
family_guy = Show.new("family guy")
rick_and_morty = Show.new("rick and morty")

lindsay_lohan = Actor.new("lindsay lohan")
rachel_mcadams = Actor.new("rachel mcadams")


hallie_parker = Character.new([the_parent_trap], lindsay_lohan, "hallie parker")
annie_james = Character.new([the_parent_trap], lindsay_lohan, "annie james")
cady_heron = Character.new([mean_girls, mean_girls2, mean_girls3], lindsay_lohan, "cady heron")
regina_george = Character.new([mean_girls, mean_girls2], rachel_mcadams, "regina george")




#liam = Passengers.new("liam")
#muhammad = Passengers.new("muhammad")
#rebecca = Passengers.new("rebecca")

#joe = Drivers.new("joe")
#ben = Drivers.new("ben")

#ride1 = Rides.new(rebecca, joe, "ride 1", 100)
#ride2 = Rides.new(rebecca, ben, "ride 2", 400)


#papa_johns = Bakery.new("papa johns")
#dominos = Bakery.new("dominos")
#pizza_hut = Bakery.new("pizza hut")

#cupcake = papa_johns.new_dessert("cupcake")
#cupcake2 = dominos.new_dessert("cupcake2")

#chocolate = cupcake.new_ingredient("chocolate", 120)
#salt = cupcake.new_ingredient("salt", 20)
#sugar = cupcake.new_ingredient("sugar", 30)
#flour = cupcake.new_ingredient("flour", 50)
#egg = cupcake.new_ingredient("egg", 100)
#water = cupcake.new_ingredient("water", 0)
#butter = cupcake.new_ingredient("butter", 500)

#chocolate = cupcake2.new_ingredient("chocolate", 120)
#salt = cupcake2.new_ingredient("salt", 20)
#sugar = cupcake2.new_ingredient("sugar", 30)
#flour = cupcake2.new_ingredient("flour", 50)
#egg = cupcake2.new_ingredient("egg", 100)
#water = cupcake2.new_ingredient("water", 0)
#butter = cupcake2.new_ingredient("butter", 500)


Pry.start
