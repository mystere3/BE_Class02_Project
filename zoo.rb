class Animal
	attr_accessor :sex

	def initialize(sex)
		@sex = sex
	end

	def speak()
		puts "No sound"
	end


end

class Mammal < Animal

	attr_accessor :fur, :milk
	
	def initialize(sex, has_fur=true)
		super(sex)
		@fur = has_fur
		@milk = true
	end

end

class Reptile < Animal

	attr_accessor :scales, :eggs
	def initialize(sex, scales=true, eggs=true)
		super(sex)
		@scales = scales
		@eggs = eggs
	end
end

class Turtle < Reptile

	attr_accessor :shell

	def initialize(sex)
		super(sex, true, true)
		@shell = true
	end

	def speak
		puts "Hiss"
	end

end

class Cat < Mammal

	attr_accessor :fur_color

	def initialize(sex, color)
		super(sex, true)
		@fur_color = color
	end

	def speak
		puts "Meow"
	end
end

raji = Cat.new("Female", "Tuxedo")
puts raji.inspect
puts raji.speak

ramona = Cat.new("Female", "Tortous Shell")
puts ramona.inspect
puts ramona.speak

clyde = Turtle.new("Female")
puts clyde.inspect
puts clyde.speak



