def countdown(number)
	puts number
	number -= 1
	countdown(number) unless number < 0
	puts "BLAST OFF"
end

countdown(10)