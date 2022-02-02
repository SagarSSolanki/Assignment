class Tax
    @@sales_items = []
  
    def input
      puts "Enter input"
  
      loop do
        str = gets.chomp
        break if str.empty?

        @@sales_items.push(str)
      end
    end
  
    def calculate_tax
      total_tax = 0
      total = 0
  
      for item in @@sales_items do
        array = item.split
        price = array[-1].to_f
        import_tax = 0
        sales_tax = 0
  
        import_tax = (price * 0.05).round(2) if item.include? "imported"
  
        sales_tax = price * 0.1 if !(item.include? "book" or item.include? "chocolate" or item.include? "pills" or item.include? "chocolates")
  
        total_tax = total_tax + sales_tax + import_tax
        total = total + sales_tax + import_tax + price
        array[-1] = ((price + sales_tax + import_tax).round(2)).to_s
        array[-2] = ":"
  
        for j in 0..array.size
          print "#{array[j]} "
        end
        puts ""
      end
      
      puts "Sales Tax : #{total_tax.round(2)}"
      puts "Total Amount : #{total.round(2)}"
    end
end
  
user = Tax.new
user.input
user.calculate_tax