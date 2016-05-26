class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
    	t.string :list, null: false 
    	t.string :item 

      t.timestamps null: false
    end
  end
end
