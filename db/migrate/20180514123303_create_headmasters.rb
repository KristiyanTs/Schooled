class CreateHeadmasters < ActiveRecord::Migration[5.2]
  def change
    create_table :headmasters do |t|
      t.references :school, null: false

      t.string :email, unique: true, null: false
      t.string :password_digest, null: false

      t.string :first_name, null: false
      t.string :middle_name
      t.string :last_name, null: false
      t.string :phone_number
      t.string :address

      t.timestamps
    end
  end
end
