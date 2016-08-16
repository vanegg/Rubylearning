#Refactoriza el siguiente código:
# def language(speak)
#   if speak == "JavaScript"
#     "I like JavaScript"
#   elsif speak == "CSS"
#     "I like CSS"
#   elsif speak == "Python"
#     "I like Python"
#   elsif speak == "R"
#     "I like R"
#   elsif speak == "C++"
#     "I like C++"
#   elsif speak == "Unity"
#     "I like Unity"
#   elsif speak == "Ruby"
#     "I like Ruby"
#   elsif speak == "Ruby on Rails"
#     "I like Ruby on Rails"
#   elsif speak == "Java"
#     "I like Java"
#   else
#     "I don't like to code"
#   end 
# end

require 'benchmark'

def language1(speak)  
  languages =["Unity", "JavaScript", "CSS", "Python", "R", "C++", "Ruby", "Ruby on Rails", "Java" ]
  languages.each do |elem|   
      return "I like #{elem}" if speak == elem 
  end
   "I don't like to code"
end

def language2(speak)
  if speak == "Unity" || speak == "JavaScript" || speak == "CSS" || speak == "Python" || speak == "R" || speak == "C++"  || speak == "Ruby" || speak == "Ruby on Rails" || speak == "Java"
    return "I like #{speak}"
  else
    "I don't like to code"
  end

end

p Benchmark.realtime { language1("JavaScript") }

p Benchmark.realtime { language2("JavaScript") }

#test
# p language("JavaScript") == "I like JavaScript"
# p language("Unity") == "I like Unity"
# p language("Swin") == "I don't like to code"
