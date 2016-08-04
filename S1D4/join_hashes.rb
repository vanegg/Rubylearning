#Define el método join_hash que recibe tres hashes y regresa la unión 
#de los hashes. No uses merge

def join_hash(hash_1, hash_2, hash_3)
  hash = Hash.new
  hash = hash_1
  hash_2.each do |key,value|
    hash[key] = value
  end
  hash_3.each do |key,value|
    hash[key] = value
  end
  hash
end

fruit = {name: "pineapple"}
weight = {weight: "1 kg"}
taste = {taste: "good"}


#test
p join_hash(fruit, weight, taste) == {:name=>"pineapple", :weight=>"1 kg", :taste=>"good"} 