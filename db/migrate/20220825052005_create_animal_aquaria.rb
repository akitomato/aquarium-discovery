class CreateAnimalAquaria < ActiveRecord::Migration[6.0]
  def change
    create_table :animal_aquaria do |t|

      t.timestamps
      t.references :animal,     null: false, foreign_key: true
      t.references :aquarium,   null: false, foreign_key: true
    end
  end
end
