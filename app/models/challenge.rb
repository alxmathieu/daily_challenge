class Challenge < ApplicationRecord
  has_many :commitments, dependent: :destroy
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
end
