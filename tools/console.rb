require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

owner1 = CarOwner.new("Owner1")
owner2 = CarOwner.new("Owner2")
owner3 = CarOwner.new("Owner3")
owner4 = CarOwner.new("Owner4")
owner5 = CarOwner.new("Owner5")

dave = Mechanic.new("Dave", "exotic")
jay = Mechanic.new("Jay", "antique")
vinny = Mechanic.new("Vinny", "clunker")

bmw = Car.new("BMW", "M3", "exotic", owner1, dave)
honda = Car.new("Honda", "Pilot", "clunker", owner2, vinny)
toyota = Car.new("Toyota", "4Runner", "antique", owner3, jay)
mercedes = Car.new("Mercedes", "S550", "exotic", owner4, dave)
nissan = Car.new("Nissan", "Maxima", "clunker", owner1, vinny)

binding.pry
