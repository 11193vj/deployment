class AddRegnoToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :regno, :string
  end
end
