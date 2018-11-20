class ModifyActivitiesInLesson < ActiveRecord::Migration[5.2]
  def change
  	add_column :lessons, :activity_type_1, :integer
  	add_column :lessons, :activity_type_2, :integer
  end
end
