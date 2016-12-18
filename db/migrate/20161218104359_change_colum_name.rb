class ChangeColumName < ActiveRecord::Migration[5.0]
  def change
    rename_column :orders, :addres, :address
  end
end
