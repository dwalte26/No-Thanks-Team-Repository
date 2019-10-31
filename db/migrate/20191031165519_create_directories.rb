class CreateDirectories < ActiveRecord::Migration[5.2]
  def change
    create_table :directories do |t|
      t.string :name
      t.text :position
      t.text :id
      t.text :email
      t.text :phone

      t.timestamps
    end
  end
end
