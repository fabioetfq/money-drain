class AddProvisioneToExpenses < ActiveRecord::Migration[6.1]
  def change
    add_column :expenses, :provisioned, :boolean
  end
end
