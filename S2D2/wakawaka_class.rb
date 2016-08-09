# Dado el siguiente código Waka Waka...

# < > ! * ' ' #
# ^ " ` $ $ -
# ! * = @ $ _
# % * < > ~ # 4
# Crea la clase WakaWaka con los siguientes métodos:

# class WakaWaka

#   def initialize(code)
#     @code = code
#   end  

#   def translate
#   end
# end 
# WakaWaka#translate, imprime el código waka waka traducido y 
# formateado como en el siguiente ejemplo:

# waka_code.translate
# #=>
# <         >         !         *         '         '         #         
# Waka      waka      bang      splat     tick      tick      hash,
# ^         "         `         $         $         -         
# Caret     quote     back-tick dollar    dollar    dash,
# !         *         =         @         $         _         
# Bang      splat     equal     at        dollar    underscore,
# %         *         <         >         ~         #         4         
# Percent   splat     Waka      waka      tilde     hash      four,



class WakaWaka
  def initialize(code)
    @code = code

  end  

  def translate
   char = @code.gsub("\n", 'R').gsub('\n', 'R').gsub('\"', '"')
  # < > ! * ' # ^ " ` $ - = @ _ % ~ 4
    name_array = []
    code_array = char.split()
    code_array.each do |char|
      case char
        when '<'  then name_array << "Waka" 
        when '>'  then name_array << "waka" 
        when '!'  then name_array << "bang" 
        when '*'  then name_array << "splat" 
        when "'"  then name_array << "tick" 
        when '#'  then name_array << "hash" 
        when '^'  then name_array << "caret" 
        when '"'  then name_array << "quote" 
        when '`'  then name_array << "bcktick" 
        when '$'  then name_array << "dollar"
        when '-'  then name_array << "dash" 
        when '='  then name_array << "equal" 
        when '@'  then name_array << "at" 
        when '_'  then name_array << "underscore" 
        when '%'  then name_array << "percent" 
        when '~'  then name_array << "tilde" 
        when '4'  then name_array << "four" 
        else "nothing"
      end
    end

    valor_inicial = 0
    valor_final = 0

    code_array.each do |char|
    if char == "R"
      puts 
      for k in valor_inicial...valor_final
        name_array[valor_inicial].to_s.capitalize!
        print k == valor_final -1 ? name_array[k].to_s + "," : name_array[k].to_s + "\t" 
      end
      valor_inicial = valor_final
      puts
    end

    next if char == "R" 
     print char + "\t"
     valor_final += 1
    end
    nil
  end
end 

waka_code = WakaWaka.new("< > ! * ' ' # \n " '^ " ` $ $ - \n ' "! * = @ $ _ \n " "% * < > ~ # 4 \n ")
#waka_code = WakaWaka.new('"')
p waka_code.translate




class Person
  @@test = "classssss variable"
  def initialize
    @name
  end

  def say_hi
    @name
    puts "Hola"
  end

end

vanessa = Person.new
vanessa.say_hi