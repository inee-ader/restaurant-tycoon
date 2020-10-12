
class Restaurant

    def self.all
        @@all 
    end

    @@all = []

    attr_accessor :name, :location

    def initialize(name)
        @name = name
        @@all << self
    end

    def create_location(name, address)
        Location.new(name, address, self)
    end

    def locations
        Location.all.select do |location_obj|
            location_obj.restaurant == self
        end
    end

    def total_rent
        rent_cost = []
        self.locations.each do |loc_obj| 
            rent_cost << loc_obj.rent 
        end
        rent_cost.sum
    end

end