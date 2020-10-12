

class Employee

    def self.all
        @@all
    end

    def self.average_pay
        pay_arr = []
        self.all.each do |employee|
            pay_arr << employee.pay
        end
        (pay_arr.sum)/(pay_arr.size)
    end

    @@all = []

    attr_accessor :name, :restaurant
    attr_reader :pay, :location

    def initialize(name, pay, location)
        @name = name
        @pay = pay
        @location = location
        @@all << self
    end
end