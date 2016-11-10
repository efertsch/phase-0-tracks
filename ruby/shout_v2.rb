# module Shout

#    def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#     words.upcase + "!!!" + " :)"
#   end

# end

# puts Shout.yell_angrily("Trump is President")
# puts Shout.yell_happily("The election is over")

module Shout
	def yell_loudly(words)
		puts words.upcase + "!!!"
	end 
end 

class SportsFan 
	include Shout
end 

class Protestors
	include Shout 
end 

fan = SportsFan.new
fan.yell_loudly("Go, fight, win!")

protestor = Protestors.new
protestor.yell_loudly("What do we want??? Equality! When do we want it??? Now")