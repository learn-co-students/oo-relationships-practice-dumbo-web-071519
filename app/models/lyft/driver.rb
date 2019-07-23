class Driver
    
    @@drivers = []
    
    attr_reader :name

    def initialize(name)
        @name = name

        @@drivers << self
    end

    def passengers 
        self.rides.map(&:passenger).uniq
    end

    def rides
        Ride.all.select{|ride| ride.driver == self}
    end

    def total_distance
        self.rides.map(&:distance).inject(:+)
    end

    def self.mileage_cap(distance)
        self.all.select{|driver| driver.total_distance > distance}

    end
    def self.all
        @@drivers
    end


end