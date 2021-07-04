class Trip
    @@trips = []
    
    attr_reader :listing, :guest

    def initialize(listing, guest)
        # super
        @listing  = listing
        @guest = guest

        @@trips << self
    end

    def self.all
        @@trips
    end
    
end