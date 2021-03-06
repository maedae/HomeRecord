class SorceryCore < ActiveRecord::Migration
  def change
    create_table :renters do |t|
      t.string :image
      t.string :first_name
      t.string :last_name
      t.string :email,            :null => false
      t.string :crypted_password
      t.string :salt


      t.timestamps
    end

    add_index :renters, :email, unique: true
  end
end