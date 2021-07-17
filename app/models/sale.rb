class Sale < ApplicationRecord
  belongs_to :reservation
  belongs_to :user
  enum payment_method: [:efectivo, :paypal, :transbank, :mercadopago, :mach]
  validates :payment_method, presence: true
end
