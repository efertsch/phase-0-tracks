module Shout
  def self.yell_angrily(words)
      words + "!!!" + " :("
    end
  def self.yell_happily(words)
    words + "!!!" + " ^.^"
    end
end



puts Shout.yell_angrily("I am frustrated")
puts Shout.yell_happily("I am ecstatic")