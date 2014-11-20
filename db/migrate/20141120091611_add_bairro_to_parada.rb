class AddBairroToParada < ActiveRecord::Migration
  def change
    add_column :paradas, :bairro, :string
  end
end
