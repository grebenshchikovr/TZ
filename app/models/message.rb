class Message < ApplicationRecord
  belongs_to :sender, :foreign_key => :sender_id, class_name: 'User'
  belongs_to :reciver, :foreign_key => :reciver_id, class_name: 'User'
end
