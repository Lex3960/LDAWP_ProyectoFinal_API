class Lesson < ApplicationRecord
	belongs_to :levels , optional: true
	has_many :activities
	has_many :lesson_types,
	dependent: :destroy
end
