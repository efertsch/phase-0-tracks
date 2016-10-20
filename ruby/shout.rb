# module Shout
#   def self.yell_angrily(words)
#       words + "!!!" + " :("
#     end
#   def self.yell_happily(words)
#     words + "!!!" + " ^.^"
#     end
# end

# puts Shout.yell_angrily("I am frustrated")
# puts Shout.yell_happily("I am ecstatic")

module Shout 
	def yell_angrily(words)
      puts words + "!!!" + " :("
    end

    def yell_happily(words)
      puts words + "!!!" + " ^.^"
    end
end 


class Sports_Fan
	include Shout
end 

class Angry_Mom
	include Shout 
end 


mom = Angry_Mom.new
mom.yell_angrily("Quiet down")
mom.yell_happily("Finally a night out")

fan = Sports_Fan.new 
fan.yell_angrily("Boooooooo")
fan.yell_happily("Go team")
