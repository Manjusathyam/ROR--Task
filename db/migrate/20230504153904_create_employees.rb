class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.integer :emp_no
      t.date :birth_date
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date :hire_date

      t.timestamps
    end
  end
end
