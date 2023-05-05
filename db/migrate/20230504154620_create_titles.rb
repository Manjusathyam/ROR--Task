class CreateTitles < ActiveRecord::Migration[7.0]
  def change
    create_table :titles do |t|
      t.integer :emp_no
      t.string :title
      t.date :from_date
      t.date :to_date

      t.timestamps
    end
  end
end
