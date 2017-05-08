class Article < ApplicationRecord
  belongs_to :category

  validates :email, :title, :description, :category_id, presence: true
  validates :title, length: {maximum: 50}
end
