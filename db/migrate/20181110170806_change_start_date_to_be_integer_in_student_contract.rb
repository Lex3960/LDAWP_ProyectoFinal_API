class ChangeStartDateToBeIntegerInStudentContract < ActiveRecord::Migration[5.2]
  def change
  	remove_column :student_contracts, :start_date
  	add_column :student_contracts, :start_date, :integer
  end
end
