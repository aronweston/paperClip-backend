class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.integer :chat_id
      t.integer :user_id
      t.text :text

      t.timestamps
    end
  end
end
