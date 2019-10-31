class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.text :position
      t.text :employeeid
      t.text :email
      t.text :phone

      t.timestamps
    end
  end
end
