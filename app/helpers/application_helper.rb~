# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
	def menu_principal
		@menu = %w(cliente qualificacao restaurante)
		menu_principal = "<ul>"
		@menu.each  do |item|
			menu_principal << "<li>" + link_to(item, :controller => item.pluralize) + "</li>"
		end
		menu_principal << "</ul>"
		menu_principal
	end
	
	def comentarios(comentavel)
		comentarios = "<div id='comentarios'>"
		comentarios << "<h3>Comentarios</h3>"
		comentarios << render(:partial => "comentarios/comentario", :collection => comentavel.comentarios)
		comentarios << "</div>"
	end
	
	def novo_comentario(comentavel)
		render(:partial => "comentarios/novo_comentario", :locals => {:comentavel => comentavel})
	end
	

end
