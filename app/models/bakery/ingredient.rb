class Ingredient
    # each ingredient has 1 calorie count
    # each ingredient belongs to 1 dessert

    attr_reader :dessert, :ingredient_name, :calorie_count

    @@all = []
    
    def initialize(dessert, ingredient_name, calorie_count)
        @dessert = dessert
        @ingredient_name =  ingredient_name
        @calorie_count = calorie_count

        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_all_by_name(ingredient_name)
        @@all.select do |ingredient|
            ingredient.ingredient_name == ingredient_name
        end
    end


    # needs to return the bakery that uses this ingredient
    # we need to go through all ingredients and grab the dessert object
    # then go through dessert and get the bakery
    def bakery
        bakery_variable = @@all.map do |ingredient| 
            bakery = ingredient.dessert.bakery
            if dessert.ingredients.include?(self)
                bakery
            end

        end
        bakery_variable
        #bakery_ingredient = @@all.select {|ingredient|ingredient.dessert}
        #bakery_ingredient.dessert.bakery
    end

end