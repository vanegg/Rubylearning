=begin

Script: Single word converter to Pig Latin

GET a word from user input
IF the word starts with a vowel, add "way" to the end
ELSE replace the word with its pig latin equivalent
  GET all of the consonants before the first vowel in the word
  SET the consonants at the end of the word and add "ay"
ENDIF
RETURN the pig-latin word
  
=end

<<<<<<< HEAD
require 'benchmark'

=======
>>>>>>> a49622af2ec0fab90a569f7a7833425a917b0569
def pig_word(string)
  if string.split(/[aeiouAEIOU].*/) == []
    string + "way"
  else
    n = 0
    n += 1 while (string[n].count "aeiouAEIOU") != 1 
    string[n..string.length-1] + string.split(/[aeiouAEIOU].*/).first + "ay"
  end
end


p pig_word("egg") == "eggway"
p pig_word("duck") === "uckday"
p pig_word("banana") == "ananabay"
p pig_word("I") == "Iway"
p pig_word("trash") == "ashtray"


=begin
Script: Pig Senetence converter to Pig Latin

GET a sentence from user input
Create placeholder pig_latin
Split the words and interate over each
Call the Pig Word method and add to pig latin and 
add seperation by space
RETURN the pig-latin sentence, and strip extra 
space at the end  
=end


def pig_sentence(string)
  pig_latin = ""
  string.split().each do |word|
   pig_latin += pig_word(word).downcase + " "
  end
  pig_latin.strip!
end

<<<<<<< HEAD
p pig_sentence("This is a big fat pig egg who works at mcdonalds")

p Benchmark.realtime { pig_sentence("This is a big fat pig egg who works at mcdonalds") } * 10000
=======
p pig_sentence("This is a big fat pig egg who works at mcdonalds") 
>>>>>>> a49622af2ec0fab90a569f7a7833425a917b0569
