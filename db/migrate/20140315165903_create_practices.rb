class CreatePractices < ActiveRecord::Migration
  def change
    create_table :practices do |t|
      t.date :practicedate
      t.integer :group
      t.integer :lane
      t.boolean :compstatus
      t.text :comment

      t.timestamps
    end
  end
end
