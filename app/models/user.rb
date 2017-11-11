class User < ApplicationRecord
  has_many :messages, as: :sender
end

