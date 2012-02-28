class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.integer :x
      t.integer :y

      t.timestamps
    end
  end
end
