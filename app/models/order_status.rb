class OrderStatus < ApplicationRecord
  has_many :orders
  default_scope { where(available: true) }
end
