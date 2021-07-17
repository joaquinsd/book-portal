class AddBookDatatoSale < ActiveRecord::Migration[5.2]
  def change
    add_column :sales, :book_name, :string
    add_column :sales, :book_author, :string
  end
end
