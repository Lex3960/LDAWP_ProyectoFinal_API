class Activity < ApplicationRecord
	belongs_to :activity_types,
	belongs_to :lessons, 
	has_many :reservations,
	dependent: :destroy
end
