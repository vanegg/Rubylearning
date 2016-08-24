require 'faker'
require 'date'
require 'csv'

class Person
  attr_accessor :first_name, :last_name, :email, :phone, :created_at
  def initialize (datos = [])
    if datos == [] 
      define_fakeperson
    else
      @first_name =  datos[0]
      @last_name = datos[1]
      @email = datos[2]
      @phone = datos[3]
      @create_at = DateTime.parse(datos[4])
    end

  end

  def define_fakeperson
    @first_name =  Faker::Name.first_name
    @last_name = Faker::Name.last_name
    @email = Faker::Internet.email
    @phone = Faker::PhoneNumber.phone_number
    @created_at = Faker::Time.between(DateTime.now - 1, DateTime.now)
  end

end

class PersonWriter

  def initialize(file, array)
    @file = file
    @array = array
  end

  def create_csv
    CSV.open(@file, "wb") do |csv|
      @array.each {|item| csv << [item.first_name, item.last_name, item.email, item.phone, item.created_at ] }
    end    
  end

end

class PersonParser

  attr_accessor :people

  def initialize(file)
    @file = file
    people_return
  end

  def people_return
    @people = []
    CSV.foreach(@file) do |row|
      @people << Person.new(row)
    end
    @people[0...10]
  end

  def edit(row: nil, first_name: nil, last_name: nil, email: nil, phone: nil, created_at: nil)
    p @people[row].first_name = first_name unless first_name == nil
    @people[row].last_name = last_name unless last_name == nil
    @people[row].email = email unless email == nil
    @people[row].phone = phone unless phone == nil
    @people[row].created_at = created_at unless created_at == nil
  end

end

people = [] 
ARGV.inspect.gsub(/\W/,"").to_i.times do
people << Person.new()
end
person_writer = PersonWriter.new("people.csv", people)
person_writer.create_csv
parser = PersonParser.new('people.csv')
people = parser.people
parser.edit(row: 5,first_name:"Vanessa",last_name:"Garcia",email:"van@gmail.com", phone:"555",created_at:"VGG")
p parser.people
