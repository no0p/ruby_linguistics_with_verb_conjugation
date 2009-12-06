f = File.open("doublingverbs.txt")
mystring = ""
f.each_line do |line|
  mystring += line.chomp! + " "
end
puts mystring

