class FixSubsetColumnNames < ActiveRecord::Migration
  def change
  	rename_column :strokes, :name, :stroke
  	rename_column :variences, :name, :varience
  end
end
