class Rides

    attr_reader :passengers, :drivers, :distance, :ride

    @@all = []
    def initialize(passengers, drivers, ride, distance)
        @passengers = passengers
        @drivers = drivers
        @distance = distance
        @ride = ride
        
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        distance_sum = @@all.sum {|ride| ride.distance}
        (distance_sum / @@all.size).to_f
    end

end