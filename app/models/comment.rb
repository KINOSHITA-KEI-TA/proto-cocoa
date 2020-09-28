class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :event
  belongs_to_active_hash :temperature
end
