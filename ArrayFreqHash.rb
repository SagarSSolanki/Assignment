print "Enter Size Of Array : "
size_of_array = gets.chomp.to_i

puts "Enter Elements"
array = Array.new(size_of_array)

for i in 0..size_of_array-1
  array[i] = gets.chomp
end

Frequency_Hash = Hash.new

for i in array

  if !Frequency_Hash.key?(i)
    Frequency_Hash[i] = 1
  else
    Frequency_Hash[i] = 1 + Frequency_Hash[i]
  end

end

Frequency_Hash.each do |key, value|
  puts key.to_s + " - " +value.to_s
end