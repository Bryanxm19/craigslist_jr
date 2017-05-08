class Category < ApplicationRecord
  has_many :articles

  validates :description, presence: true
end
