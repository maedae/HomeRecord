class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :address
      t.string :landord_name
      t.date :move_in
      t.date :move_out
      t.string :image
      t.boolean :lease_ended

      t.timestamps null: false
    end
  end
end
