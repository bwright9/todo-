class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	t.string :item, null: false 
    	t.boolean :active, default: true 
    	t.belongs_to :list

      t.timestamps null: false
    end
  end
end
