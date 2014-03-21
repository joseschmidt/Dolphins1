class CreateSwimsets < ActiveRecord::Migration
  def change
    create_table :swimsets do |t|
      t.integer :practice_id
      t.integer :qty
      t.integer :distance
      t.boolean :rori
      t.integer :rest
      t.text :comment

      t.timestamps
    end
  end
end
