class CreateSubsets < ActiveRecord::Migration
  def change
    create_table :subsets do |t|
      t.integer :swimset_id
      t.integer :distance
      t.integer :stroke_id
      t.text :comment

      t.timestamps
    end
  end
end
