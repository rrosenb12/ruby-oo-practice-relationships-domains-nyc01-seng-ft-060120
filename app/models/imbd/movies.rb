class Movie

    attr_reader :movie_name

    @@all = []

    def initialize(movie_name)
        @movie_name = movie_name 

        @@all << self
    end

    def self.all
        @@all
    end

    #movies can reference actors through the character class    
    #movies has multiple references to actors through characters
    def actors
        Character.all.select{|character| character.movie == self}
    end

     # actors = 0
        # if actors +=1
    
    def self.most_actors
        num_of_actors = 0
        max_movie = nil
        @@all.map do |movie|
            actors = movie.actors
            if num_of_actors < actors.size
                num_of_actors = actors.size
                max_movie = movie
            end
        end
        max_movie
    end
end