class Actor
    
    attr_reader :actor_name

    @@all = []

    def initialize(actor_name)
        @actor_name = actor_name

        @@all << self
    end

    def self.all
        @@all
    end

    def actor_characters
        Character.all.select do |characters|
            characters.actor == self
        end
    end

    def self.most_characters
        cc = Hash.new(0)
        Character.all.map {|character| cc[character.actor] += 1}
        cc.sort_by {|k,v| v}.last[0]
    end

end