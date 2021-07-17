class UsersController < ApplicationController
  def my_reservations
    @reservations = current_user.reservations.includes(:book)
  end

  def my_purchases
    @purchases = current_user.sales
  end
end
