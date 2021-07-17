class Book < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservation
end
