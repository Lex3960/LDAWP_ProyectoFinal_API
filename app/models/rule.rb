class Rule < ApplicationRecord
	has_many :activity_rules
	dependent: :destroy
end
