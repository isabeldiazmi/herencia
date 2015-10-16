class Vehicle
  attr_accessor :age, :color, :number_of_wheels
  def initialize(color, age, number_of_wheels)
    @number_of_wheels = number_of_wheels
    @color = color
    @age = age
  end

  def age!
    @age += 1
  end
end

class Motorized < Vehicle
  attr_accessor :refuel, :number_of_gears
  def initialize(color, age, number_of_wheels, refuel, number_of_gears)
    super(color, age, number_of_wheels)
    @has_motor = true
    @refuel = refuel
    @number_of_gears = number_of_gears
  end
end

class Motorbike < Motorized
  
end

class Car < Motorized
  
end

class Bicycle < Vehicle
  
end

class Skateboard < Vehicle
  
end

moto = Motorbike.new("red", 2, 2, true, 3)
car = Car.new("black", 7, 4, true, 5)
bike = Bicycle.new("grey", 3, 2)
skateboard = Skateboard.new("red", 8, 4)
skateboard.number_of_wheels = 2
vehicles = [moto, car, bike, skateboard]


vehicles.each do |vehicle|
  vehicle.age!
  puts "#{vehicle.class} responds to:"
  puts "\tNumber of wheels: #{vehicle.respond_to?(:number_of_wheels) == true}"
  puts "\tColor: #{vehicle.respond_to?(:color) == true}"
  puts "\tAge!: #{vehicle.respond_to?(:age!) == true}"
  puts "\tHas motor: #{vehicle.respond_to?(:has_motor) == true}"
  puts "\tTank size: #{vehicle.respond_to?(:tank_size) == true}"
  puts "\tRefuel: #{vehicle.respond_to?(:refuel) == true}"
  puts "\tNumber of gears: #{vehicle.respond_to?(:number_of_gears) == true}"
  puts "\tAge: #{vehicle.age}"
  puts "\n\n"
end