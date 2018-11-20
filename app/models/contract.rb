class Contract < ApplicationRecord
	has_many :student_contracts, 
	dependent: :destroy
end
