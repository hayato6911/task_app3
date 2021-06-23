class AddIntroductionToResevations < ActiveRecord::Migration[5.2]
  def change
    add_column :resevations, :introduction, :string
  end
end
