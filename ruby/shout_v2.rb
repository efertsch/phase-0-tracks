module Shout

   def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words.upcase + "!!!" + " :)"
  end

end

puts Shout.yell_angrily("Trump is President")
puts Shout.yell_happily("The election is over")