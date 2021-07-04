class Guest
    # include Counter

    @@guests = []

    attr_reader :name

    def initialize(name)
        @name = name

        @@guests << self
    end

    def self.all
        @@guests
    end

    def trips
        Trip.all.select{|trip| trip.guest == self}
    end

    def listings
        self.trips.map(&:listing)
    end

    def self.pro_traveler
        self.all.select{|guest| guest.trip_count > 1}
    end

    def self.find_all_by_name(name)
        Trip.all.select{|trip| trip.guest.name == name}
    end


end