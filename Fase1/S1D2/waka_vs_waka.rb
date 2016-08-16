require 'benchmark'

class WakaWaka

  def initialize(code)
    @code = code
  end

  MAPPINGS = {
      '<' => 'Waka',
      '>' => 'waka',
      '!' => 'bang',
      "'" => 'tick',
      '#' => 'hash',
      '^' => 'Caret',
      '"' => 'quote',
      '`' => 'b tick',
      '$' => 'dollar',
      '-' => 'dash',
      '=' => 'equal',
      '@' => 'at',
      '_' => 'under',
      '%' => 'Percent',
      '~' => 'tilde',
      '4' => 'four',
      '*' => 'splat',
  }

  def translate
    @code.each_slice(7) do |symbols|
      symbols.join("\t")
      symbols.map {|sym| MAPPINGS.fetch(sym, "unknown symbol")  }.join("\t")
    end
  end

end

waka_code = WakaWaka.new(["<", ">", "!", "*", "'", "'", "#", "^", '"', "`", "$", "$", "-", "!", "*", "=", "@", "$", "_", "%", "*", "<", ">", "~", "#", "4"])

p Benchmark.realtime { waka_code.translate } * 1000 


class WakaWaka1
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
      for k in valor_inicial...valor_final
        name_array[valor_inicial].to_s.capitalize!
        k == valor_final -1 ? name_array[k].to_s + "," : name_array[k].to_s + "\t" 
      end
      valor_inicial = valor_final
    end

    next if char == "R" 
     char + "\t"
     valor_final += 1
    end
    nil
  end
end 

waka_code1 = WakaWaka1.new("< > ! * ' ' # \n " '^ " ` $ $ - \n ' "! * = @ $ _ \n " "% * < > ~ # 4 \n ")
#waka_code = WakaWaka.new('"')


p Benchmark.realtime { p waka_code1.translate } * 1000 


