class CreateColleges < ActiveRecord::Migration[5.0]
  def change
    create_table :colleges do |t|
    	t.integer :ccode
    	t.string :name

      t.timestamps
    end
  end
end
