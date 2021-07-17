class ChangeDefaultPaymentMethod < ActiveRecord::Migration[5.2]
  def change
    change_column_default :sales, :payment_method, 0
  end
end
