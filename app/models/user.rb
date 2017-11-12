class User < ApplicationRecord
  has_many :messages, :foreign_key => :sender_id
  validates_presence_of :nickname
  validates :nickname, uniqueness: true
end