class CreateOrganizations < ActiveRecord::Migration[7.0]
  def change
    create_table :organizations do |t|

      t.string :name 
      t.string :address
      t.string :contect_no
      t.integer :category
    
      t.timestamps
    end
  end
end
