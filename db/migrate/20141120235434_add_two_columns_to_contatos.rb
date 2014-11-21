class AddTwoColumnsToContatos < ActiveRecord::Migration
  def change
    add_column :contatos, :linha, :string
    add_column :contatos, :placa, :string
  end
end
