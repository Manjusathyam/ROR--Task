class CreateDeptManagers < ActiveRecord::Migration[7.0]
  def change
    create_table :dept_managers do |t|
      t.integer :dept_no
      t.integer :emp_no
      t.date :from_date
      t.date :to_date

      t.timestamps
    end
  end
end
