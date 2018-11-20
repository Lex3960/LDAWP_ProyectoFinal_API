class Level < ApplicationRecord
	has_many :lessons, 
	dependent: :destroy
end
