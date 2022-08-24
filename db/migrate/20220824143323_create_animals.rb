class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|

      t.timestamps
      t.string :name,                   null: false
      t.string :detail,                 null: false
      t.integer :categpry_id,           null: false
    end
  end
end
