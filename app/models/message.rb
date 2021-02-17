class Message < ApplicationRecord
  belongs_to :user
  has_many :clips
end
