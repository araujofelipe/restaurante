class RestaurantesController < ApplicationController
	
	def index
	  @restaurantes = Restaurante.paginate :page=> params['page'], :per_page => 3
	  respond_to do |format|
	  		format.html
	  		format.xml{render :xml => @restaurantes}
	  end		
	end	

	def new
		@restaurante = Restaurante.new
	end
	
	def create
		@restaurante = Restaurante.new(params[:r])
	
		if @restaurante.save
			flash[:notice] = "Gravou com sucesso"		
			redirect_to :action => "show", :id => @restaurante
		else
			render :action => "new"
		end
	
	end
	
	def edit 
		@restaurante = Restaurante.find(params[:id])
	end
	
	def update
		@restaurante = Restaurante.find(params[:id])
		if @restaurante.update_attributes(params[:restaurante])
			render :action => "edit"	
		else
			
		end
	end

	def destroy
		@restaurante = Restaurante.find(params[:id])
		@restaurante.destroy

		redirect_to(:action => "index")
	end
	
	def show
		@restaurante = Restaurante.find(params[:id])
	end
	
	def busca
		@restaurantes = []
		@restaurantes << Restaurante.find_by_especialidade(params[:especialidade])
		
			render :action => "index"
	end

end
