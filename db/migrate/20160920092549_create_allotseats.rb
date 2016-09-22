class CreateAllotseats < ActiveRecord::Migration[5.0]
  def change
    create_table :allotseats do |t|
    	t.integer :bcode
    	t.integer :ccode
    	t.integer :seatallocated

      t.timestamps
    end
  end
end
