class CreateContatos < ActiveRecord::Migration
  def change
    create_table :contatos do |t|
      t.text :mensagem
      t.integer :user_id
      t.integer :tipo_id

      t.timestamps
    end
  end
end
