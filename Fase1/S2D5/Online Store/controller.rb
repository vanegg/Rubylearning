require_relative 'view.rb'
require_relative 'model.rb'

class OnlineStore

	def initialize
		@view = View.new()
		@store = Store.new()
		session
	end

	def shop
		@store.build_menu(@store.user.class)
		@view.menu(@store.menu)
		option = gets.chomp.to_i
		action = @store.menu[option - 1].downcase
		shop_option(action)
	end

	def shop_option(action)
		case action
		when 'verusuarios'
			users= @store.search_users
			@view.show_users(users)
			shop
		when 'verproductos'
			method = @store.method(action.to_sym)
			products = method.call()
			@view.show_products(products)
			shop
		when 'crearproducto'
			@view.create_product
			product = gets.chomp.to_i
			method = @store.method(action.to_sym)
			method.call(product)
			shop
		when 'venderproducto'
			@view.sell_buy_product
			id = gets.chomp.to_i
			method = @store.method(action.to_sym)
			success = method.call(id)
			@view.sale(success)
			shop
		when 'vercatalogo'
			method = @store.method(action.to_sym)
			products = method.call()
			@view.show_products(products, true)
			shop
		when 'comprarproductos'
			@view.sell_buy_product
			id = gets.chomp.to_i
			method = @store.method(action.to_sym)
			success = method.call(id)
			@view.sale(success)
			shop
		when 'logout'
			method = @store.method(action.to_sym)
			method.call()
			session
		end	
	end

	def session
	  @view.enter
	  @view.menu(@store.menu)
	  option = gets.chomp.to_i
	  action_sesion(option)
	end

	def action_sesion(option)
	  case option
	    when 1 
	      @view.data('name')
		  	name = gets.chomp
		  	@view.data('password')
		  	password = gets.chomp
	      login = @store.login(name, password)
	      @view.success_login(login, name)
	      login ? shop : session
	    when 2 
		 		@view.data('name')
		  	name = gets.chomp
		  	@view.data('password')
		  	password = gets.chomp
		  	@view.data('email')
		  	email = gets.chomp
		    @store.register(name, email, password)
		    @view.success_register
		    session
	    when 3 then 
	    	@view.exit
	    	@store.exit
	  end
	end

end

 OnlineStore.new().methods