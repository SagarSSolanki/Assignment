print "Enter Size Of Array : "
n = gets().chomp().to_i
puts "Enter Elements"
arr = Array.new(n)
for i in 0..n-1
  arr[i] = gets().chomp()
end
H = Hash.new
for i in arr
  if !H.key?(i)
    H[i]=1;
  else
    H[i]=1+H[i]
  end
end

H.each do |key, value|
  puts key.to_s + " - " +value.to_s
end