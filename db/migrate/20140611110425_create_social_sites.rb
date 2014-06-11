class CreateSocialSites < ActiveRecord::Migration
  def change
    create_table :social_sites do |t|
      t.string :name
      t.string :api_token
      t.string :user_identifier
      t.references :user

      t.timestamps
    end
  end
end
