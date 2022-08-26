class CreateAquaria < ActiveRecord::Migration[6.0]
  def change
    create_table :aquaria do |t|

      t.timestamps
      t.string :name,         null: false
      t.text :detail,         null: false
      t.integer :area_id,     null: false
    end
  end
end
