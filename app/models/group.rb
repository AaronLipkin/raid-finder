class Group < ApplicationRecord
	belongs_to :character, foreign_key: "raid_leader_id"
	belongs_to :raid
	has_many :ledgers
	has_many :characters, through: :ledgers
	has_many :requests
end
