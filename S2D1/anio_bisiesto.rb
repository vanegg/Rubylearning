#Crea el método leap_year? que recibe como parámetro un año, 
#y regresa true o false si el año es o no bisiesto.

def leap_year?(anio)
  if anio % 4 == 0 then 
    return anio % 400 == 0 ? true : false if anio % 100 == 0
    return true
  else
    false 
  end
end

# Pruebas
p leap_year?(1900) == false
p leap_year?(1988) == true
p leap_year?(1989) == false
p leap_year?(1992) == true
p leap_year?(2000) == true
p leap_year?(2001) == false
p leap_year?(1600) == true  
p leap_year?(1704) == true