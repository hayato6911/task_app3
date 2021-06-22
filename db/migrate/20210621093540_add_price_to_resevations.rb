class AddPriceToResevations < ActiveRecord::Migration[5.2]
  def change
    add_column :resevations, :price, :string
  end
end
