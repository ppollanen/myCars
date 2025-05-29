class AddPurchaseKmToCars < ActiveRecord::Migration[8.0]
  def change
    add_column :cars, :purchase_km, :integer
  end
end
