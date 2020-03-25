require 'pry'
class CarOwner

  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    #return an array of cars that belongs to self
    Car.all.select {|car| 
      # binding.pry
      car.owner == self}
  end

  def mechanics 
    #return an array of mechanics that self goes to
    self.cars.map do |car|
      car.mechanic
    end
  end

  def self.average_number_of_cars
    # return average number of cars for all self
    # binding.pry
    num_cars = Car.all.count
    num_owners = CarOwner.all.count
    average_num_cars = num_cars.to_f / num_owners.to_f
    return average_num_cars
  end
end
