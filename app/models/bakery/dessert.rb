class Dessert

    attr_reader :bakery, :dessert

    @@all = []

    def initialize(bakery, dessert)
        @bakery = bakery
        @dessert = dessert
        @@all << self
    end

    def new_ingredient(ingredient_name, calorie_count)
        Ingredient.new(self, ingredient_name, calorie_count)
    end

    def self.all
        @@all
    end

    def ingredients
        Ingredient.all.select do |ingredients|
            ingredients.dessert == self
        end
    end

    def calories
        ingredients.sum{|ingredient| ingredient.calorie_count}
    end

end