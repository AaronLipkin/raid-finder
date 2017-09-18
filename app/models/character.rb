class Character < ApplicationRecord
	belongs_to :klasse
	belongs_to :user
	belongs_to :spec
	has_many :ledgers
	has_many :groups, through: :ledgers
	has_many :requests
end
