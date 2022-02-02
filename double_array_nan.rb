array = [1, 2, "NAN", 3, 4]

array.map! do |item| 
  if item.is_a? Numeric
    item * 2
  else
    item.to_s
  end
end
puts array 
