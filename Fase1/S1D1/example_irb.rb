irb(main):002:0> 9-6
=> 3
irb(main):003:0> 89+578
=> 667
irb(main):004:0> 9*-3
=> -27
irb(main):005:0> for i in 1..5
irb(main):006:1> puts "hola"
irb(main):007:1> end
hola
hola
hola
hola
hola
=> 1..5
irb(main):008:0> g = "hola"
=> "hola"
irb(main):009:0> h = "MUNDO"
=> "MUNDO"
irb(main):010:0> a = [1,2,3]
=> [1, 2, 3]
irb(main):011:0> a.inspect
=> "[1, 2, 3]"
irb(main):012:0> p a
[1, 2, 3]
=> [1, 2, 3]
irb(main):013:0> print a
[1, 2, 3]=> nil
irb(main):014:0> puts a
1
2
3
=> nil
irb(main):015:0> g.upcase!
=> "HOLA"
irb(main):016:0> g
=> "HOLA"
irb(main):017:0> Math.sqrt(7690939204)
=> 87698.0
irb(main):018:0> def mayusculas(word)
irb(main):019:1> word.upcase
irb(main):020:1> end
=> :mayusculas
irb(main):021:0> mayusculas("minus")
=> "MINUS"