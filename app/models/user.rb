class User < ApplicationRecord
	has_many :characters
	has_many :groups, foreign_key: "raid_leader_id"
end
