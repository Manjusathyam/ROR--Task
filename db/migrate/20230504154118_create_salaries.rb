class CreateSalaries < ActiveRecord::Migration[7.0]
  def change
    create_table :salaries do |t|
      t.integer :emp_no
      t.integer :salary
      t.date :from_date
      t.date :to_date

      t.timestamps
    end
  end
end
