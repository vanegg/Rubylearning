class People
  def greeting
    "Hello!"
  end
end

class Women < People
  def greeting
    super + " from People class"
  end
end


wendy = Women.new
p wendy.greeting       
#=> "Hello! from GoodDog class"