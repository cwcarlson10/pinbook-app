class Chatroom < ApplicationRecord
  has_many :messages, dependant: :destory
  has_many :users, through: :messages
  validates :topic, presence: true, uniqueness: true, case_sensitive: false
end
