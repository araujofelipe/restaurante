class Restaurante < ActiveRecord::Base

	has_many :qualificacoes
	has_and_belongs_to_many :pratos
	
	has_many :comentarios, :as => :comentavel

	validates_presence_of :nome, :message => "Deve ser preenchido"
	validates_presence_of :endereco, :message => "Deve ser preenchido"
	
	validates_uniqueness_of :nome, :message => "Nome já cadastrado"
	
	validate :primeira_letra_deve_ser_maiuscula
		
	private
		def primeira_letra_deve_ser_maiuscula
			errors.add("nome","primeira letra deve ser maiuscula") unless nome =~ /[A-Z].*/
		end

end
