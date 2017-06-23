class Category < ApplicationRecord
  has_many :products
  validates :title, length: {maximum: 255}, presence: true

end
