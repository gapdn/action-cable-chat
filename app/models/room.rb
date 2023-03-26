class Room < ApplicationRecord
  has_many :messages
  
  validates :name, presence: true, uniqueness: true
  after_create_commit { broadcast_append_to 'rooms' }
end
