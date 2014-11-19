class AddFirstFieldsToParadas < ActiveRecord::Migration
  def change
  	add_column :paradas, :linha, :string
  	add_column :paradas, :descricao, :string
  	add_column :paradas, :sequencia, :integer
  	add_column :paradas, :latitude, :numeric
  	add_column :paradas, :longitude, :numeric
  	add_column :paradas, :endereco, :string
  end
end
