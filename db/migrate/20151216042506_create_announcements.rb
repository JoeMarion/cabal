class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.integer :user_id
      t.string :title
      t.text :content
      t.timestamp
    end
  end
end
