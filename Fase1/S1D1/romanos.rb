# En este ejercicio crearas un programa que convierta integers a números romanos modernos.
# Primero intenta escribir el programa utilizando el Case Statement, 
#luego intenta refactorizarlo a utilizar un método más complejo, para ello investiga cual es la lógica para pasar de números arábigos a romanos.

# numbers = Hash.new
numbers = {1 => "I", 2 => "V", 3 => "X", 4 => "L", 5 => "C", 6 => "D", 7 => "M"}

def romandigit2(num, limit, order)
  case limit
      when "middle" 
        numbers[(order + 1) * 2]
      when "menor"
        if num == 4 then return "IV" end
        numbers[order * 2 + 1] * num

      when "mayor"
        if num == 9 then return "IX" end
        numbers[(order + 1) * 2] + (numbers[order * 2 + 1] * num ) * (num - 5)
      else ""
    end
end

def romandigit(num, limit, order) 
  case order
  when 0
    case limit
      when "middle" 
        return "V"
      when "menor"
        if num == 4 then return "IV" end
        "I" * num

      when "mayor"
        if num == 9 then return "IX" end
        "V" + "I" * (num - 5)
      else ""
    end

  when 1
    case limit
      when "middle" 
        return "L"
      when "menor"
        if num == 4 then return "XL" end
        "X" * num

      when "mayor"
        if num == 9 then return "XC" end
        "L" + "X" * (num - 5)
      else ""
    end

      when 2
    case limit
      when "middle" 
        return "D"
      when "menor"
        if num == 4 then return "CD" end
        "C" * num

      when "mayor"
        if num == 9 then return "CM" end
        "D" + "C" * (num - 5)
      else ""
    end

  when 3
    "M" * num   

  else ""
  end
end

def to_roman(num)
  romans = ""
   digits = num.to_s.reverse.split("")
   (digits.length - 1).downto(0) do |order| 
       digit = digits[order].to_i
       limit = higher_lower(digit) 
       romans += romandigit(digit,limit,order)
    end  
    romans
end

#Method that identifies if a number is closer to 0 or 5
def higher_lower(num)
  if num == 5
    "middle"
  elsif num < 5
    "menor"        
  else
    "mayor"
  end
end

a = to_roman(1) == "I"
b = to_roman(3) == "III"  
c = to_roman(4) == "IV"
d = to_roman(9) == "IX"
e = to_roman(13) == "XIII"
f = to_roman(14) == "XIV"
g = to_roman(944) == "CMXLIV"
h = to_roman(1453) == "MCDLIII"
i = to_roman(1646) == "MDCXLVI"

puts "|valid |input | expected | actual"
puts "|------|------|----------|-------"
puts "| #{a} |1     | I        | #{to_roman(1)}"
puts "| #{b} |3     | III      | #{to_roman(3)}"
puts "| #{c} |4     | IV       | #{to_roman(4)}"
puts "| #{d} |9     | IX       | #{to_roman(9)}"
puts "| #{e} |13    | XIII     | #{to_roman(13)}"
puts "| #{f} |14    | XIV      | #{to_roman(14)}"
puts "| #{g} |944   | CMXLIV   | #{to_roman(944)}"
puts "| #{h} |1453  | MCDLIII  | #{to_roman(1453)}"
puts "| #{i} |1646  | MDCXLVI  | #{to_roman(1646)}" 