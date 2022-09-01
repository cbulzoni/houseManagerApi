class CreateAppliances < ActiveRecord::Migration[6.0]
  def change
    create_table :appliances do |t|
      t.string :appliance_type
      t.string :category
      t.date :last_serviced
      t.string :make
      t.string :model
      t.text :notes
      t.date :service_due
      t.integer :year
      t.references :contact, foreign_key: true
      t.references :house, foreign_key: true

      t.timestamps
    end
  end
end
