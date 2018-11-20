class CreateLessonTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :lesson_types do |t|
      t.integer :lesson_id
      t.integer :activity_type_id

      t.timestamps
    end
  end
end
