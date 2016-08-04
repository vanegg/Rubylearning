#Define el método anagrams que recibe un arreglo de palabras y regresa
#grupos de palabras que son anagramas. Recuerda que los anagramas son 
#palabras que tienen las mismas letras pero en orden diferente.


def comparacion(palabra_1, palabra_2)
  con = 0
  if palabra_1.length == palabra_2.length
    for i in 0...palabra_1.length
      for j in 0...palabra_2.length
        if palabra_1[i] == palabra_2[j]
          if (palabra_1.count palabra_1[i]) == (palabra_2.count palabra_2[j])
            con += 1 
          end
        end
      end
    end
    if con == palabra_1.length
      return true
    end
  end
  false
end

def canonical(word)
  word.split("").sort.join.downcase
end

def anagrams(word1, word2)
  canonical(word1) == canonical(word2)
end

def anagrams_for(array)
  master_array =[]  
  array.each do |word|
    grupo = []
    array.each do |palabra|
      grupo << palabra if anagrams(word, palabra)
    end

  master_array << grupo
end
 master_array.uniq
end
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

#test

p anagrams_for(words) == [["demo", "dome", "mode"], ["none", "neon"], ["tied", "diet", "edit", "tide"], ["evil", "live", "veil", "vile"], ["fowl", "wolf", "flow"]]
