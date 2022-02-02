exemption = %w(chocolate cheese book pills tablet chocolates)
puts "Enter items : "
items = Array.new

loop do
  str = gets.chomp

  break if str.empty?
  items.push(str)
end

total_tax = 0
total = 0

for item in items
  arr = item.split
  price = arr[-1].to_f
  import_tax = 0
  sales_tax = 0

  import_tax = (price * 0.05).round(2) if item.include? "imported" 

  flag = 0
  for element in exemption
    flag = 1 if item.include? element
  end

  sales_tax = (price * 0.1).round(2) if flag == 0

  total_tax = total_tax + sales_tax + import_tax
  total = total + sales_tax + import_tax + price
  arr[-1] = ((price + sales_tax + import_tax).round(2)).to_s
  arr[-2] = ":"

  for j in 0..arr.size
    print "#{arr[j]} "
  end

  puts ""
end

puts "Sales Tax : #{total_tax.round(2)}"
puts "Total Amount : #{total.round(2)}"
