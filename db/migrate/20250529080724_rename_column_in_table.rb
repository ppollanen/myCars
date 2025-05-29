class RenameColumnInTable < ActiveRecord::Migration[8.0]
  def change
    rename_column :cars, :licplt, :registration_number
  end
end
