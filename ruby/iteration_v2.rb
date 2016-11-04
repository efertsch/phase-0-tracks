
def here_we_go_again
    name1 = "Ethan"
    name2 = "Kimberly"
    puts "Who is working on this project?"
    yield(name1, name2)
end 


beer_brands = ["Blue Moon", "Corona", "Budweiser"]

beer_brands.each do |brand|
    puts "#{brand} is my favorite kind of beer!"
end
puts "Original Data:"
p beer_brands

beer_brands.map! do |brand|
    brand.upcase
end
p beer_brands



fruit_colors = {"bananas" => "yellow", "oranges" => "orange", "limes" => "green"}

fruit_colors.each do |fruit, color|
    puts "#{fruit} are #{color}."
end
p fruit_colors


beer_brands = ["Blue Moon", "Corona", "Budweiser"]
fruit_colors = {"bananas" => "yellow", "oranges" => "orange", "limes" => "green"}


########### DRIVER CODE #############
# here_we_go_again { |name1, name2| puts "#{name1} and #{name2} are working on this project."  }
# Arrays
# beer_brands.delete_if { |brand| brand == "Budweiser"}
# p beer_brands
# beer_brands.keep_if { |brand| brand == "Corona"}
# p beer_brands
# beer_brands.select! { |brand| brand == "Blue Moon"} # need to use bang operator to modify original data
# p beer_brands
# beer_brands.reject! { |brand| brand == "Budweiser"} # need to use bang operator to modify original data
# p beer_brands
# Hashes
# fruit_colors.delete_if { |fruit, color| fruit == "limes"}
# p fruit_colors # deletes both key and value that meets this condition
# fruit_colors.keep_if { |fruit, color| fruit != "oranges"}
# p fruit_colors
# fruit_colors.select! { |fruit, color| color == "yellow"}
# p fruit_colors
# fruit_colors.reject! { |fruit, color| color == "yellow"}
# p fruit_colors


############# PSEUDOCODE ################
# Release 1
    # Declare an array
        # Iterate with .each (will not modify data)
        # Iterate with .map! (will modify data)
    # Declare a hash
         # Iterate with .each (will not modify data)
# Release 2
# Find other array and hash methods that take blocks to accomplish the below:
# Declare an array and a hash
# Do the following for each data structure (aka 8 times)
    # 1. Iterates through items and deletes any that meet a certain condition (.delete_if)
    # 2. Iterates through items and returns any that meet a certain condition
    # 3. Iterates through items and returns any that meet a certain condition
    # 4. Iterates through and deletes items in a data structure until the condition in the block evaluates to false
