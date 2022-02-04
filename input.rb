class UserInput
    def input
      @products = []
      puts "Enter input"
      loop do
        product = gets.chomp
        break if product.empty?
        @products << product
      end
      @products
    end
  end
  