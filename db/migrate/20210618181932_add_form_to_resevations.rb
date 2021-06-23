class AddFormToResevations < ActiveRecord::Migration[5.2]
  def change
    add_column :resevations, :room_id, :integertotal_price
    add_column :resevations, :n1_price, :integer
    add_column :resevations, :room_image, :string
    add_column :resevations, :room_name, :string
  end
end
