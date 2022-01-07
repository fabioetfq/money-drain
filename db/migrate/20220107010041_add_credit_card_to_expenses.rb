class AddCreditCardToExpenses < ActiveRecord::Migration[6.1]
  def change
    add_column :expenses, :credit_card, :string
  end
end
