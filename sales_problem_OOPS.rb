require './input.rb'
require './calculate_tax.rb'

products = UserInput.new.input
CalculateTax.new(products).calculate_tax
