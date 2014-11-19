class CreateChamadas < ActiveRecord::Migration
  def change
    create_table :chamadas do |t|
      t.string :linha
      t.integer :parada_id
      t.text :descricao
      t.integer :user_id

      t.timestamps
    end
  end
end
