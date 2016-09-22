class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
    	t.string :name
    	t.string :dob
    	t.string :gender
    	t.integer :phone
    	t.integer :score
    	t.string :email
    	t.string :password_digest
    		
    	

      t.timestamps
    end
  end
end
