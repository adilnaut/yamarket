class Product < ApplicationRecord
  has_attached_file :image, styles: {thumbnail: "60x60", large:"300x300"}


  validates :title, length: {maximum: 255}, presence: true
  validates_attachment :image, presence: true, content_type: {content_type: ["image/png", "image/jpeg"]}
  validates :description, length: {maximum: 255}, presence: true
  validates :price, presence: true
  # validates :user_id, presence: true
  validates :category_id, presence: true


  belongs_to :user, dependent: :destroy
  belongs_to :category

  default_scope -> {order('created_at DESC')}
end
