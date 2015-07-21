class CreateHrspecialists < ActiveRecord::Migration
  def change
    create_table :hrspecialists do |t|

      t.timestamps null: false
    end
  end
end
