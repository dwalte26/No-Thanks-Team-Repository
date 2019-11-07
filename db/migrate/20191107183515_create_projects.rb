class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :projects
      t.text :body
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
