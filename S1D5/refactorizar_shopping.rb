#Refactoriza y agrega el código necesario para hacer pasar las pruebas.

# def shopping(list)
#   basket_shopping = nil
#   if basket_shopping == nil
#     basket_shopping = list
#   end
# end

def shopping(list)
  basket_shopping = nil
  basket_shopping ||= list.join(', ') 

end

#test
p shopping(["eggs", "milk", "bread", "orange juice"]) == "eggs, milk, bread, orange juice"


# name = name || "Mau"
# name ||= "Mau"