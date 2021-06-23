class AddUserIdToResevations < ActiveRecord::Migration[5.2]
  def change
    add_column :resevations, :user_id, :string
  end
end
