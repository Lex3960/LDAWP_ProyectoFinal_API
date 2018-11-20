class Lesson < ApplicationRecord
	belongs_to :levels , optional: true
	has_many :activities,
	dependent: :destroy
end
