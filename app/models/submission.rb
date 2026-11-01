class Submission < ApplicationRecord
  validates :username1, :username2, presence: true, length: { maximum: 120 }
end
