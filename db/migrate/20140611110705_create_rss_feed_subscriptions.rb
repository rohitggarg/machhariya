class CreateRssFeedSubscriptions < ActiveRecord::Migration
  def change
    create_table :rss_feed_subscriptions do |t|
      t.references :user
      t.references :rss_feed

      t.timestamps
    end
  end
end
