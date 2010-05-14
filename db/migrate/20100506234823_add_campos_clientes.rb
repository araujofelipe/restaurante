class AddCamposClientes < ActiveRecord::Migration
  def self.up
 	add_column :clientes, :idade, :integer 
  end

  def self.down
  end
end
