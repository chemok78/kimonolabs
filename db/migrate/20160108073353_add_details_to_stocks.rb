class AddDetailsToStocks < ActiveRecord::Migration
  def change
    add_column :stocks, :url, :string
    add_column :stocks, :pe, :float
    add_column :stocks, :quote, :float
  end
end
