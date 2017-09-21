class Spec < ApplicationRecord
	belongs_to :klasse
	has_many :characters
	has_many :ledgers
end
