class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.date :date_completed
      t.date :date_started
      t.text :description
      t.float :estimated_cost
      t.text :notes
      t.string :priority
      t.string :status
      t.references :contact, foreign_key: true
      t.string :house
      t.string :references

      t.timestamps
    end
  end
end
