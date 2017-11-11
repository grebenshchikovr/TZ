class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.text :message
      t.boolean :read
      t.integer :sender_id
      t.integer :receiver_id
      t.timestamps
    end
    add_index :messages, [:sender_id, :receiver_id]
  end
end
