#Refactoriza en una línea de código y corrige el código necesario, de tal manera 
#que la prueba sea true. La prueba no puede modificarse.

# def is_true?
#   [1, 3, 5].respond_to?(:to_sym)
# end

# def validate(array)
#   if is_true?
#     true
#   else
#     false
#   end
# end

def validate(array)
 array.respond_to?(:to_sym)
end

#test
p validate([1, 3, 5]) == false