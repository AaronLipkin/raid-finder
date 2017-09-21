class Request < ApplicationRecord
	belongs_to :group
	belongs_to :character
	belongs_to :spec
end
