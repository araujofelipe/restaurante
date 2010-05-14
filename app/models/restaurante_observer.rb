class RestauranteObserver < ActiveRecord::Observer
	
	def before_create (r)
		puts "Logando a gravacao #{r.nome}"
	end

end
