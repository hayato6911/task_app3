class AddTotalPriceToResevations < ActiveRecord::Migration[5.2]
  def change
    add_column :resevations, :total_price, :integer
  end
end
