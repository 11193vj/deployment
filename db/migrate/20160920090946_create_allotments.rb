class CreateAllotments < ActiveRecord::Migration[5.0]
  def change
    create_table :allotments do |t|

    	t.string :regno
    	t.integer :choiceno
    	t.integer :ccode
    	t.integer :bcode

      t.timestamps
    end
  end
end
