class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.text :message
      t.boolean :read
      t.references :sender, index: true
      t.references :receiver, index: true
      t.timestamps
    end
  end
end
