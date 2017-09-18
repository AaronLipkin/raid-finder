class Raid < ApplicationRecord
	has_many :groups
	belongs_to :expansion
end
