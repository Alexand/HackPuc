class CreateTiposContatos < ActiveRecord::Migration
  def change
    create_table :tipos_contatos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
