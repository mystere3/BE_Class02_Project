class Automobile

	attr_accessor :color, :wheels

	def initialize(color="grey", wheels=4)
		@color = color
		@wheels = wheels
	end

	def start_engine
		puts "Vroom vroom"
	end

	def stop
		puts "Screeeeech!"
	end
end


class Car < Automobile

	def stop
		super
		puts "Using antilock breaks"		
	end	



	# def color
	# 	@color
	# end

	# def color=(color)
	# 	@color = color
	# end




end

class Truck < Automobile
	

	def initialize(color="grey", wheels=4)
		@color = color
		@wheels = wheels
	end
end


car_1 = Car.new("blue")
puts "Car 1 is #{car_1.color}"
puts car_1.inspect
car_1.start_engine
car_1.stop


car_2 = Car.new("red")
puts "Car 2 is #{car_2.color}"
puts car_2.inspect
car_2.start_engine

car_3 = Car.new
puts "Car 3 is #{car_3.color}"
puts car_3.inspect
car_3.start_engine


truck_01 = Truck.new("Green", 8)
puts truck_01.inspect
truck_01.start_engine





