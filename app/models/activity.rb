class Activity < ApplicationRecord
	belongs_to :activity_types, optional: true
	belongs_to :lessons, optional: true
	has_many :reservations,
	dependent: :destroy
end
