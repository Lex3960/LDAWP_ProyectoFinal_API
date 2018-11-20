class LessonType < ApplicationRecord
	belongs_to :lesson
	belongs_to :activity_type
end
