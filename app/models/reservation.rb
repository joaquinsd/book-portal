class Reservation < ApplicationRecord
  belongs_to :book
  belongs_to :user
  has_many :sales
end
