def sf_giants 
	puts "Let's go Giants!"
	yield("Even Year!","Giants never say die!")
end

sf_giants { |chant_1, chant_2| puts "#{chant_1}\n #{chant_2}" }