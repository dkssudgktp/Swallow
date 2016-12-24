class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :id_num
      t.integer :timeline_id
      t.string :name
      t.text :msg

      t.timestamps
    end
  end
end
