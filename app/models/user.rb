class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :products, foreign_key: "user_id", dependent: :destroy
  has_many :adresses, foreign_key: "user_id", dependent: :destroy

  validates :name, presence: true
  validates :lastname, presence: true
  validates :phone, presence: true, uniqueness: true

end
