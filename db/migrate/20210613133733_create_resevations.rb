class CreateResevations < ActiveRecord::Migration[5.2]
  def change
    create_table :resevations do |t|
      t.string :start_day
      t.string :end_day
      t.string :number_of_people

      t.timestamps
    end
  end
end
