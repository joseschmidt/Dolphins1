class AddVarienceIdColumnToSubsets < ActiveRecord::Migration
  def change
    add_column :subsets, :varience_id, :integer
  end
end
