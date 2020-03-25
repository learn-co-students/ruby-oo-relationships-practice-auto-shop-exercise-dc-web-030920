require 'pry'
class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    #return an array of all cars that belong to self
    Car.all.select do |car|
      car.mechanic == self
      # binding.pry
    end
  end

  def car_owners
    self.cars.map do |car| 
      car.owner 
    end
  end

  def car_owners_names
#name of car owners for self
    self.car_owners.map do |owner| 
      owner.name
    end
  end
end
