class AddPasswordDigestToResevations < ActiveRecord::Migration[5.2]
  def change
    add_column :resevations, :password_digest, :string
  end
end
