class Team < ApplicationRecord

  belongs_to :user

  validates :Name, presence: true
  validates :email, presence: true
  validates :size, presence: true
  validates :message, presence: true, numericality: {greater_than_or_equal_to: 1}
end
