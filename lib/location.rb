
class Location

    def self.all
        @@places
    end

    def self.all_addresses
        self.all.map do |loc_obj|
            loc_obj.address
        end
    end

    @@places = []

    attr_accessor :location, :address, :rent
    attr_reader :restaurant, :employee

    def initialize(name, address, restaurant, rent)
        @name = name
        @address = address
        @restaurant = restaurant
        @rent = rent
        @@places << self
    end

    def hire_employee(name, pay)
        Employee.new(name, pay, self)
    end
    
end
