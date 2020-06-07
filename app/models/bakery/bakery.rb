# create files for your ruby classes in this directory


class Bakery
    @@all = []

    attr_reader :bakery_name

    def initialize(bakery_name)
        @bakery_name = bakery_name

        @@all << self
    end

    def self.all
        @@all
    end

    def new_dessert(dessert)
        Dessert.new(self, dessert)
    end

    #return array of ingredients for all instances of bakery's desserts
    def ingredients
        Ingredient.all.select do |ingredients|
            ingredients.dessert.bakery == self
            # Ingredient.all.select {|ingredients| ingredients.bakery == self}
        end
    end

    def desserts
        Dessert.all.select do |desserts|
            desserts.bakery == self
        end
    end

    def average_calories
        #returns the average calories for this bakery's desserts
        calories = ingredients.sum{|ingredient| ingredient.calorie_count}
        (calories / ingredients.size)
    end

    def shopping_list
        ingredients.map do |ingredients|
            ingredients.ingredient_name
        end
    end

end