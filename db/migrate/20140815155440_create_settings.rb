class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :facebook_app_id
      t.string :facebook_app_secret
      t.string :twitter_consumer_id
      t.string :twitter_consumer_secret

      t.timestamps
    end
  end
end
