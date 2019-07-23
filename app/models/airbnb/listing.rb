class Listing
    # include Counter

    @@listings = []

    attr_reader :city

    def initialize(city)
        @city = city

        @@listings << self
    end

    
    def trips
        Trip.all.select{|trip| trip.listing == self}
    end
    
    def guests 
        trips.map(&:guest)
    end
    
    def self.all
        @@listings
    end

    def self.find_all_by_city(city)
        Trip.all.select{|trip| trip.listing.city == city}
    end

    def self.most_popular
        self.all.inject do |memo, listing| 
            if memo.trip_count < listing.trip_count
                listing
            else
                memo
            end
        end
    end

end