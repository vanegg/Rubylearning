#Refactoriza el siguiente código:
# def age(num)
#   if num > 10
#     "Woow... You are #{num} years old"
#   end
# end

def age(num)
    "Woow... You are #{num} years old" if num > 10
end

#test
p age(19) == "Woow... You are 19 years old"
p age(24) == "Woow... You are 24 years old"
p age(32) == "Woow... You are 32 years old"

# Corrige y refactoriza el siguiente código usando unless y 
#menos líneas de código:
#def swim(time)
#   if time < 10
#     "#{time} seconds... New Record for 50 meters"
#   end
# end

def swim(time)
    "#{time} seconds... New Record for 50 meters" unless time > 10
end

#test
p swim(5) == "5 seconds... New Record for 50 meters"
p swim(8) == "8 seconds... New Record for 50 meters"

#Refactoriza el siguiente código:
# def greater_than(a, b)
#   if a > b
#     "#{a} is greater than #{b}"
#   else
#     "#{b} is greater than #{a}"
#   end
# end


def greater_than(a, b)
   a > b ? "#{a} is greater than #{b}" : "#{b} is greater than #{a}"
end

#test
p greater_than(56, 70) == "70 is greater than 56"
p greater_than(56, 58) == "58 is greater than 56"
p greater_than(15, 20) == "20 is greater than 15"
