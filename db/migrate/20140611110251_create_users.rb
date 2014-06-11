class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :gcm_key
      t.string :apns_key

      t.timestamps
    end
  end
end
