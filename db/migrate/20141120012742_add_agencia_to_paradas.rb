class AddAgenciaToParadas < ActiveRecord::Migration
  def change
    add_column :paradas, :agencia, :string
  end
end
