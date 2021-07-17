class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.references :reservation, foreign_key: true
      t.integer :payment_method

      t.timestamps
    end
  end
end
