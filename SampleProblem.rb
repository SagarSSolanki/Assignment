exemption = ["chocolate", "cheese", "book", "pills", "tablet", "chocolates"]
puts "Enter items : "
items = Array.new

loop do
  str = gets.chomp

  if str.empty?
    break
  end

  items.push(str)
end

total_tax = 0
total = 0

for i in items
  arr = i.split
  price = arr[-1].to_f
  import_tax = 0
  sales_tax = 0

  if i.include? "imported"
    import_tax = (price * 0.05).round(2)
  end

  flag = 0
  for e in exemption
    if (i.include? e)
      flag = 1
    end
  end

  if flag == 0
    sales_tax = (price * 0.1).round(2)
  end

  total_tax = total_tax + sales_tax + import_tax
  total = total + sales_tax + import_tax + price
  arr[-1] = ((price + sales_tax + import_tax).round(2)).to_s
  arr[-2] = ":"

  for j in 0..arr.size
    print "#{arr[j]} "
  end

  puts ""
end

puts total_tax.round(2) , total.round(2)
 