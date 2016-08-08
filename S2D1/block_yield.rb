# Dado el siguiente código:

# def average_grade
#   yield
# end

# def average_grade(grades)
#   count = 0
#   average = 0
#   grades.each{ |grade|
#      average += grade
#      count += 1
#   }
#   average.to_f / count
# end

# ¿Qué modificarías del código para imprimir una tabla como se muestra
# en la prueba?

# #test
# #=>
# # ------------Benchmak started----------
# # Start time: 2016-06-17 20:14:46 -0500

# # "Average is: 7.6"

# # End time: 2016-06-17 20:14:46 -0500
# # -------------Benchmak finished--------
# # Result: 0.000142 seconds
# Considera lo siguiente:

# El método average_grade debe aceptar un parámetro de calificaciones
# y usar yield para llamar a un bloque. El bloque debe regresar el promedio
# de las calificaciones. Revisa el uso de la clase Time.

# Refactoriza el código con el uso de inject.

require 'Time'

def average_grade
  yield  
end

def tabla 
  p "------------Benchmak started----------"
  start_time = Time.now
  p "Start time: #{start_time}"
  puts
  p "Average is: #{yield}"
  sleep(0.0001)
  puts
  end_time = Time.now
  p "End time: #{end_time}"
  p "-------------Benchmak finished--------"
  "Result: #{(end_time.nsec - start_time.nsec)/1000000000.0} seconds"
end

grades = [10,9,8,7,10]

prom = average_grade{grades.inject {|promedio ,num| (promedio += num)}.to_f / grades.length}

p tabla {prom}

