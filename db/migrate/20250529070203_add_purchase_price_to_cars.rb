class AddPurchasePriceToCars < ActiveRecord::Migration[8.0]
  def change
    add_column :cars, :purchase_price, :decimal
  end
end
