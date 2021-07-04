class Ride
    @@rides = []

    attr_reader :passenger, :driver, :distance

    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance.to_f

        @@rides << self
    end

    def self.average_distance
        all_distances = self.all.map(&:distance)
        all_distances.inject(:+) / self.all.count
    end

    def self.all
        @@rides
    end
end