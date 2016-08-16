def destructive(arg)
  name = arg
  puts "Value of name: #{name}"
  puts "Calling the method slice! in name : #{name.slice!(0..3)}"
  puts "Name value after passing it through slice!: #{name}"
end

def non_destructive(arg)
  name = arg
  puts "Value of name: #{name}"
  puts "Calling the upcase method in name : #{name.upcase}"
  puts "Name value after passing it through upcase: #{name}"
end


destructive("Fernando")
non_destructive("Joseph")