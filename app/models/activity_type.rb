class ActivityType < ApplicationRecord
	has_many :activity_rules 
	has_many :lesson_types, 
	dependent: :destroy
end
