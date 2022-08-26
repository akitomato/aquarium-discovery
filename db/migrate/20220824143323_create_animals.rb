class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|

      t.timestamps
      t.string :name,                   null: false
      t.text   :detail,                 null: false
      t.integer :category_id,           null: false
    end
  end
end
