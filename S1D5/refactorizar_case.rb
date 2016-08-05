#Refactoriza con menos líneas de código:
# def temperature(grade)
#   case grade
#   when 0..5
#     "Temperature is between 0 and 5"
#   when 6..10
#     "Temperature is between 6 and 10"
#   when 11..15
#     "Temperature is between 11 and 15"
#   when 16..20
#     "Temperature is between 16 and 20"
#   when 21..25
#     "Temperature is between 21 and 25"
#   when 26..30
#     "Temperature is between 26 and 30"
#   when 31..35
#     "Temperature is between 31 and 35"
#   when 36..40
#     "Temperature is between 36 and 40"
#   else
#     "Temperature is greater than 40"
#   end
# end

def temperature(grade)
  return "Temperature is greater than 40" if grade > 40
  return "Temperature is between 0 and 5" if grade <= 5
  base = grade - grade % 10 
  min = grade % 10 <= 5 ? base + 1 : base + 6
  max = grade % 10 <= 5 ? base + 5 : base + 10
  "Temperature is between " + "#{min}" +" and " + "#{max}"
end

#test
p temperature(23) == "Temperature is between 21 and 25"
p temperature(45) == "Temperature is greater than 40"
p temperature(34) == "Temperature is between 31 and 35"