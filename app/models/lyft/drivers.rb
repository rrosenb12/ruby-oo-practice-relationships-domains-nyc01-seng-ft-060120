class Drivers

    attr_reader :drivers

    @@all = []

    def initialize(driver_name)
        @driver_name = driver_name

        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        #returns an array of all ride this instance of passenger has beeen on
        #need to access rides class
        Rides.all.select do |rides|
            rides.drivers == self
        end
    end

    def passengers
        rides.map do |rides|
            rides.passengers
        end
    end

    def self.mileage_cap(distance)
        Rides.all.map do |rides|
            if rides.distance > distance
            rides.drivers
            end
        end
    end

end