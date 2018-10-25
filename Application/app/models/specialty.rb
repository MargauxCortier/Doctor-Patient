class Specialty < ApplicationRecord
	has_many :middle
	has_many :doctors, through: :middle
end
