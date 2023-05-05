class CreateDeptEmps < ActiveRecord::Migration[7.0]
  def change
    create_table :dept_emps do |t|
      t.integer :emp_no
      t.string :dept_no
      t.date :from_date
      t.date :to_date

      t.timestamps
    end
  end
end
