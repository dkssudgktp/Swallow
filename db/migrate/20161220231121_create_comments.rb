class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :timeline_id
      t.text :msg

      t.timestamps
    end
  end
end
