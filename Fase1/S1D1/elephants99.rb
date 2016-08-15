#Tienes que escribir un programa que modele la canción de los elefantes del 1 al 99. Utiliza rangos y loops. Haz que tu programa pueda recibir el número de elefantes en el que se rome la telaraña. Juega con la diferencia de utilizar puts y print. En USA cantan una canción similar que se llama “99 bottles of beer”, la diferencia es que el conteo va en reversa. Busca una manera de hacer un loop fácilmente y para ello existe un método.

def elephants(num, ascend = true)
  if (num <= 99)
   if ascend 
     1.upto(num) {|i| p "#{i} elefante se columpiaba sobre la tela de una araña, como veía que resistía fueron a llamar a otro elefante." }
   else
     num.downto(1) {|i| p "#{i} elefante se columpiaba sobre la tela de una araña, como veía que resistía fueron a llamar a otro elefante." }
   end
  else
    p "El num máximo de elefantes es 99"
  end
end

 elephants(10, false)
 elephants(37)
 elephants(100)