class AddAuthenticateUserToResevations < ActiveRecord::Migration[5.2]
  def change
    add_column :resevations, :authenticate_user, :string
  end
end
