class ModifyActivitiesInLesson2 < ActiveRecord::Migration[5.2]
  def change
  	  	remove_column :lessons, :activity_type_1
  	remove_column :lessons, :activity_type_2
  end
end
