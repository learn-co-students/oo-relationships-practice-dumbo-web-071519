class Passenger
    @@passengers = []

    attr_reader :name

    def initialize(name)
        @name = name

        @@passengers << self
    end

    def drivers
        self.rides.map(&:driver).uniq
    end
    
    def rides
        Ride.all.select{|ride| ride.passenger == self}
    end

    def self.all
        @@passengers
    end
    
    def total_distance
        self.rides.map(&:distance).inject(:+)
    end

    def self.premium_members
        self.all.select{ |passenger|
            passenger.total_distance > 100.0
        }
    end
end