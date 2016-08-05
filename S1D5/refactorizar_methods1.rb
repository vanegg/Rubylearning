# Refactoriza el código, al final debe quedar un sólo método con una línea de código. 
#Haz pasar la prueba.

# def a 
#   true
# end

# def b
#   false
# end

# def join
#   a || b == b && b
# end

# def check?
#   if !!join
#     "true" 
#   else
#     "false"
#   end
# end

def check?
  !!(true|| false == false && false)? "true" : "false"
end

#test
p check? == "true"