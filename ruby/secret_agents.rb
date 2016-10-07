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

# puts encrypt("abc")
# puts encrypt("zed")
# puts decrypt("bcd")
# puts decrypt("afe")


# puts decrypt(encrypt("swordfish"))
# This nested method call works by first executing the encrypt method -- 
# to push all characters forward one and then exectues decrypt method to revert all character postitions.

#Release 5: Add and Interface

# Asks if user would like to encrypt or decrypt a password
puts "Would you like to decrypt or encrypt a password?"
user_answer = gets.chomp
#Testing to make sure user enters valid input
until user_answer == "decrypt" || user_answer == "encrypt"
	puts "I didn't understand you please enter 'encrypt or decrypt'"
	user_answer = gets.chomp
end 
# Saving encrypt or decrypt answer into variables for later use
if user_answer == "decrypt"
	puts "What is the password you wish to decrypt?"
	decrypt_password = gets.chomp
# Uses decrypt method to decrypt password given by user
	puts decrypt(decrypt_password)
else 
	puts "What is the password you wish to encrypt?"
	encrypt_password = gets.chomp
# Uses encrypt method to encrypt password given by user
	puts encrypt(encrypt_password)
end 





