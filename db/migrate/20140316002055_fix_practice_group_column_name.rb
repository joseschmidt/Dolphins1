class FixPracticeGroupColumnName < ActiveRecord::Migration
  def change
  	rename_column :practices, :group, :group_id
  end
end
