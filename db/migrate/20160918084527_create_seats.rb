class CreateSeats < ActiveRecord::Migration[5.0]
  def change
    create_table :seats do |t|

    	t.string :college_code
    	t.string :branch_code
    	t.string :no_of_seats
      t.timestamps
    end
  end
end
