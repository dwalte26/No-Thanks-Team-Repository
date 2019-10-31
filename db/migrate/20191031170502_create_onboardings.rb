class CreateOnboardings < ActiveRecord::Migration[5.2]
  def change
    create_table :onboardings do |t|
      t.string :name
      t.text :position
      t.text :employeeid
      t.text :email
      t.text :phone

      t.timestamps
    end
  end
end
