class CreateVariences < ActiveRecord::Migration
  def change
    create_table :variences do |t|
      t.string :name
      t.string :desc

      t.timestamps
    end
  end
end
