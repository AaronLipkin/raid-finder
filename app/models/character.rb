class Character < ApplicationRecord
	belongs_to :klasse
	belongs_to :user
	belongs_to :spec
end
