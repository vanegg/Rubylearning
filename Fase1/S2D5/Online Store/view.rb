class View
	def enter
		puts "Bienvenido a la tienda en línea"
		puts '*' * 50
	end

	def menu (menu)
		menu.each_index do |n|
			puts "#{n + 1}. #{menu[n]}"
		end
		print "Escoge una opción: "
	end

	def data(data)
		print "Introduce el nombre: " if data == 'name'
		print "Introduce la contraseña: " if data == 'password'
		print "Introduce el correo:" if data == 'email'
	end

	def success_register
		puts "Registro exitoso"
	end

	def success_login(login, name)
		puts login ? "Bienvenid@ #{name}:" : "Login no exitoso. Compruebe su nombre/contraseña"
	end

	def create_product
		puts '*' * 50
		puts "ID 		PRODUCTO"
		puts "01		Camisa"
		puts "02		Pantalón"
		puts "Escoga el producto que desea crear:"
	end

	def show_products(products, catalog = false)	
		puts '*' * 50
		puts "Productos en Stock:"
		print "CANTIDAD	" if catalog == false
		puts "ID 		PRODUCTO"
		products.each do |product|
			print "#{product[0]}		" if catalog == false
			puts "#{product[1]}		#{product[2]}"
		end
		puts '*' * 50
	end

	def show_users(users)
		puts '*' * 50
		puts "Usuarios registrados:"
		puts "Nombre 		Email 		Categoria"
		users.each do |user|
			puts "#{user[0]}		#{user[1]}		#{user[3]}"
		end
		puts '*' * 50
	end

	def sell_buy_product
		puts '*' * 50
		puts "ID 		PRODUCTO"
		puts "01		Camisa"
		puts "02		Pantalón"
		print "Indique el producto que desea:"
	end

	def sale(success)
		puts '*' * 50
		puts success ? "¡Venta exitosa!" : "No se pudo completar la acción"
		puts '*' * 50
	end

	def exit
		puts "Gracias por comprar con nosotros"
	end
end