class Ledger < ApplicationRecord
  belongs_to :group
  belongs_to :character
end
