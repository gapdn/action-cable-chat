class User < ApplicationRecord
  devise :database_authenticatable
  validates :username, presence: :true, uniqueness: true

  scope :all_except, ->(user) { where.not(id: user.id) }

  has_many :messages
end
