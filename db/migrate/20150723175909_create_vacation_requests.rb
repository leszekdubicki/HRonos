class CreateVacationRequests < ActiveRecord::Migration
  def change
    create_table :vacation_requests do |t|
      t.references :employee, index: true, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.text :comments
      t.text :manager_comments
      t.boolean :approved

      t.timestamps null: false
    end
  end
end
