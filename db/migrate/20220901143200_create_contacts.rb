class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :company_name
      t.string :contact_name
      t.string :contact_type
      t.string :email
      t.string :phone
      t.references :owner, foreign_key: true

      t.timestamps
    end
  end
end
