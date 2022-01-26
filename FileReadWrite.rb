file = File.open("sagar.txt", "r")
puts file.read

file = File.open("sagar.txt", "a")
file.write("\nSagar Singh")
file.close

file = File.open("sagar.txt", "r")
puts file.read