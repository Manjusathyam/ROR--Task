class CreateDepartments < ActiveRecord::Migration[7.0]
  def change
    create_table :departments do |t|
      t.integer :dept_no
      t.string :dept_name
      t.string :string

      t.timestamps
    end
  end
end
