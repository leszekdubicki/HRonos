class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.text :first_name
      t.text :last_name
      t.date :start_date
      t.integer :job_id
      t.decimal :salary
      t.integer :manager_id
      t.integer :department_id

      t.timestamps null: false
    end
  end
end
