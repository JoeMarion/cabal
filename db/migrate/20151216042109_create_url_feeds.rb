class CreateUrlFeeds < ActiveRecord::Migration
  def change
    create_table :url_feeds do |t|

      t.timestamps null: false
    end
  end
end
