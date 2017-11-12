class Message < ApplicationRecord
  belongs_to :sender, :foreign_key => :sender_id, class_name: 'User'
  belongs_to :reciver, :foreign_key => :receiver_id, class_name: 'User'

  validates_presence_of :message, :sender_id, :receiver_id, :message => "can't be empty"
end
