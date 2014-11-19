class CreateParadas < ActiveRecord::Migration
  def change
    create_table :paradas do |t|

      t.timestamps
    end
  end
end
