print "Enter Size Of Array : "
size_of_array = gets.chomp.to_i

puts "Enter Elements"
array = Array.new(size_of_array)

for i in 0..size_of_array-1
  array[i] = gets.chomp
end

frequency_hash = Hash.new

for i in array

  if !frequency_hash.key?(i)
    frequency_hash[i] = 1
  else
    frequency_hash[i] = 1 + frequency_hash[i]
  end

end

frequency_hash.each do |key, value|
  puts "#{key} - #{value}"
end
