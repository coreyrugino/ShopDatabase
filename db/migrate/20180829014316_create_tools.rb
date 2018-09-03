class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.string :name
      t.integer :quantity
      t.string :brand
      t.string :kind
      t.boolean :mill
      t.boolean :lathe
      t.boolean :drill
      t.float :diameter
      t.float :length
      t.string :drill_length
      t.float :radius
      t.string :material
      t.integer :teeth
      t.float :f_low
      t.float :f_high
      t.float :f_rough
      t.float :f_finish
      t.float :fZ_low
      t.float :fZ_high
      t.float :fZ_rough
      t.float :fZ_finish
      t.integer :Vc_low
      t.integer :Vc_high
      t.integer :Vc_rough
      t.integer :Vc_finish
      t.float :Ap_low
      t.float :Ap_high
      t.boolean :rough_bit
      t.boolean :finish_bit

      t.timestamps null: false
    end
  end
end
