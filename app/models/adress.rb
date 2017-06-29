class Adress < ApplicationRecord
    belongs_to :user, dependent: :destroy
    validates :user_id, presence: true
    validates :title, length: {maximum: 255}, presence: true
    validates :city, length: {maximum: 255}, presence: true
    validates :street, length: {maximum: 255}, presence: true
    validates :home , length: {maximum: 255}, presence: true
end
