class Passengers

    attr_reader :passenger_name

    @@all = []

    def initialize(passenger_name)
        @passenger_name = passenger_name

        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        #returns an array of all ride this instance of passenger has beeen on
        #need to access rides class
        Rides.all.select do |rides|
            rides.passengers == self
        end
    end

    def drivers
        rides.map do |rides|
            rides.drivers
        end
    end
    
    def total_distance
        rides.sum {|ride| ride.distance}
    end

    def self.premium_members
        @@all.select do |passengers|
            passengers.total_distance > 100
        end
    end

end