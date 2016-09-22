class CreateChoices < ActiveRecord::Migration[5.0]
  def change
    create_table :choices do |t|
    	t.string :regno
    	t.integer :choiceno
    	t.integer :ccode
    	t.integer :bcode

      t.timestamps
    end
  end
end
