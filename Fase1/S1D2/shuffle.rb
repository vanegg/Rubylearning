def shuffle(array)
  random_numbers = Random.new
  # escribe el algoritmo que revuelva un array
  inicies_array = Array.new
  while inicies_array.length < array.length
    num = random_numbers.rand(array[0]..array.last)
    inicies_array << num unless inicies_array.include?(num)
  end
  inicies_array
end


# Driver code:
array = (1..15).to_a

p shuffle(array)

# Esto no deberá arrojar una excepción
10.times do |variable|
    raise "No esta revolviendo bien" if shuffle(array) == shuffle(array)
end
p true