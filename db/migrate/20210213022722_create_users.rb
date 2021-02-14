class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :username
      t.text :email
      t.string :password_digest
      t.boolean :admin
      t.text :first_name
      t.text :last_name
      t.text :city

      t.timestamps
    end
  end
end
