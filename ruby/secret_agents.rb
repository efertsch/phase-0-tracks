#Encrypt Method:
#1. Define method that takes a string as a parameter
#2. Within the method loop through each letter in the string (may have to convert to index)
#3. As it is looping, push each letter in the string 1 letter forward (.next)
#4. Exit loop once last letter has been pushed
#5. End method 
#6. Call method using examples below


def encrypt(word)
index = 0
	while index < word.length
			if word[index] == "z"
				word[index] = "a"
			else
				word[index] = word[index].next
			end 
		index +=1
	end 
	word
end




#Decrypt Method:
#1. Define method that takes a string as a parameter
#2. Within the method loop through each letter in the string 
#3. As it is looping, push each letter in the string 1 letter in the reverse 
#4. Exit loop once last letter has been pushed
#5. Store loop information back in parameter variable
#6. End method
#7. Call method

def decrypt(word)
index = 0
alphabet = "abcdefghijklmnopqrstuvwxyz"
	while index < word.length  
	place_in_alphabet = alphabet.index(word[index])
	word[index] = alphabet[place_in_alphabet - 1]
	index +=1
	end 
	word
end

puts encrypt("abc")
puts encrypt("zed")
puts decrypt("bcd")
puts decrypt("afe")


puts decrypt(encrypt("swordfish"))
# This nested method call works by first executing the encrypt method -- 
# to push all characters forward one and then exectues decrypt method to revert all character postitions.





