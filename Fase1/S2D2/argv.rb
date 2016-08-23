puts "Los argumentos recibidos son:"
puts ARGV.inspect
puts ""

# [CodeaCamp04s-Mac-mini:S2D2 codea_mac_04$ ruby argv.rb 
# Los argumentos recibidos son:
# []

# CodeaCamp04s-Mac-mini:S2D2 codea_mac_04$ ruby argv.rb un_argumento
# Los argumentos recibidos son:
# ["un_argumento"]

# CodeaCamp04s-Mac-mini:S2D2 codea_mac_04$ ruby argv.rb argumento_uno argumento dos
# Los argumentos recibidos son:
# ["argumento_uno", "argumento", "dos"]

# CodeaCamp04s-Mac-mini:S2D2 codea_mac_04$ ruby argv.rb "argumento con espacios uno" "argumento con espacios dos"
# Los argumentos recibidos son:
# ["argumento con espacios uno", "argumento con espacios dos"]