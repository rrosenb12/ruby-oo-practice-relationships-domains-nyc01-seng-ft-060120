class Character

    attr_reader :movies, :shows, :actor, :character_name

    @@all = []

    def initialize(movies = [], shows = [], actor, character_name)
        @movies = movies
        @shows = shows
        @actor = actor
        @character_name = character_name

        @@all << self
    end

    def self.all
        @@all
    end


    def self.most_appearances

        total_shows = Hash.new(0) # Enables initialize without key
        @@all.map{|character| total_shows[character] = character.shows.size + character.movies.size}
        total_shows.sort_by {|k,v| v}.last[0]
    
        #(Character(1 appearance in a movie, 1000 appearances in shows) -> dominate in shows
        #Chracter(1000 movies, 1 shows) -> dominate in movies
        #Character(501 movies, 601 shows)  -> most appearances overall
    end

end