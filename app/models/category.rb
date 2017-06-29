class Category < ApplicationRecord
  has_many :products, dependent: :destroy
  validates :title, length: {maximum: 255}, presence: true, uniqueness: true

end
