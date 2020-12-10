class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      # Clearance Start
      t.string :email, null: false
      t.string :encrypted_password, limit: 128, null: false
      t.string :confirmation_token, limit: 128
      t.string :remember_token, limit: 128, null: false
      # Clearance Stop
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :license_type
      t.string :license_number
      t.date :license_expiration_date
      t.timestamps null: false
    end

    add_index :users, :email
    add_index :users, :remember_token
  end
end
