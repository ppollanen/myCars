class AddPurchaseDateToCars < ActiveRecord::Migration[8.0]
  def change
    add_column :cars, :purchase_date, :date
  end
end
