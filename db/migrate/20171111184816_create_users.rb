class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.text :nickname
      t.datetime :last_online_at

      t.timestamps
    end
  end
end
