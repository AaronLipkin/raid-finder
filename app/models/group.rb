class Group < ApplicationRecord
	belongs_to :user, foreign_key: "raid_leader_id"
	belongs_to :raid
end
