class ActivityRule < ApplicationRecord
	belongs_to :rules , optional: true
	belongs_to :activity_types , optional: true
end
