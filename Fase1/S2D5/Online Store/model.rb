require 'csv'
	$file_user = 'users.csv'
	$file_product = 'products.csv'

class Store
	attr_accessor :menu, :user

	def initialize
		@num_product01 = 0
		@num_product02 = 0
		@menu = []
		build_menu
	end

	def build_menu(type = 'none')
		@menu = %w(Login Registrar Exit)
		@menu = %w(Logout VerProductos CrearProducto VerUsuarios) if type.to_s == 'Admin'
		@menu = %w(Logout VenderProducto VerProductos) if type.to_s == 'Seller'
		@menu = %w(Logout VerCatalogo ComprarProductos) if type.to_s == 'Client'
	end

	def login(name, password)
		search_users
		user_temp = @users.find do |user_row|
			user_row[0] == name
		end
		if (user_temp != nil && user_temp[2] == password)
		  build_user(user_temp)
		  return true 
		else 
		  return false
		end
	end

	def build_user(user_temp)
		case user_temp[3]
		when "Admin"
			@user = Admin.new(user_temp[0], user_temp[1], user_temp[2])
		when "Seller"
			@user = Seller.new(user_temp[0], user_temp[1], user_temp[2])
		when "Client"
			@user = Client.new(user_temp[0], user_temp[1], user_temp[2])
		end
	end

	def register(name, email, password)
		user_temp = password == 'seller' ? Seller.new(name, email, password) : Client.new(name, email, password)
		user_temp = Admin.new(name, email, password) if password == 'admin'
		add_user(user_temp)
	end

	def exit(*args)
		#guarda cambios de @user y sus productos
	end

	def logout()
		@user = ""
		build_menu
	end

	def add_user(user_temp)
		CSV.open($file_user, "a+") do |csv|
			csv << [user_temp.name, user_temp.email, user_temp.password, user_temp.class]
		end
	end

	def search_users
		@users = CSV.read($file_user)
	end

	def verproductos
		 @products = CSV.read($file_product)
	end

	def vercatalogo
		verproductos
	end

	def crearproducto(id, vender = false)
		products = verproductos
		if products	!= []
		if products[0][1].to_i == 1
			@num_product01 = products[0][0].to_i 
			@num_product02 = products[1][0].to_i if products.length > 1
		else
			@num_product02 = products[0][0].to_i
			@num_product01 = products[1][0].to_i if products.length > 1
		end
		else
			@num_product01 = 0
			@num_product02 = 0
		end
		num = 0
		if id == 1
			if vender
				if @num_product01 > 0
					@num_product01 -= 1
				else
					return false
				end
			else
				@num_product01 += 1
			end
		 	num = @num_product01
		elsif id == 2
			if vender
				if @num_product02 > 0
					@num_product02 -= 1
				else
					return false
				end
			else
				@num_product02 += 1
			end
		 	num = @num_product02
		end 
		update_product(id) if File.file?($file_product)
		if num > 0
			product = Product.new(id)
	  	CSV.open($file_product, "a+") do |csv|
	 	  	csv << [num, id, product.name]
	 		end
	 	end
	 	return num >= 0 ? true : false

	end

	def venderproducto(id)
		crearproducto(id, true)
	end

	def comprarproductos(id)
		crearproducto(id, true)
	end

	def update_product(id)
		@old_csv = verproductos
		CSV.open($file_product, "wb") do |csv|
			@old_csv.each do |row|
				csv << row if row[1].to_i != id
			end
		end
	end	  
end

class Product
	attr_accessor :id, :name
	def initialize(id)
		case id
			when 1 then @name = "Camisa"
			when 2 then @name = "Pantalon"
		end
	end
end

class User
	attr_accessor :name, :email, :password

	def initialize(name, email, password)
		@name = name
		@email = email
		@password = password
	end
end

class Admin < User
end

class Seller < User
end

class Client < User
end