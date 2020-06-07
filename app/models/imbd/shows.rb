class Show

    attr_reader :show_name

    @@all = []

    def initialize(show_name)

        @show_name = show_name

        @@all << self
    end

    def self.all
        @@all
    end

    #will return movies with the same names as THIS SHOW
    def on_the_big_screen
        Character.all.select do |characters|
            characters.movie == self
        end
    end
    
end