class Spec < ApplicationRecord
	belongs_to :klasse
	has_many :characters
end
