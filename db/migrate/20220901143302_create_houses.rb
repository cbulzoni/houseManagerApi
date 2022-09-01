class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.string :city
      t.date :purchase_date
      t.string :state
      t.string :street_address
      t.string :zip_code
      t.references :owner, foreign_key: true

      t.timestamps
    end
  end
end
