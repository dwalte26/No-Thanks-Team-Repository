class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :position
      t.string :employeeid
      t.string :email
      t.string :phone
      t.string :password

      t.timestamps
    end
  end
end
