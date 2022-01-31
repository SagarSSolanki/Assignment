array = [1, 2, "NAN", 3, 4]

array = array.map{ |i| 
if i.is_a? Numeric
  i * 2
else
  i.to_s
end
}

puts array 
