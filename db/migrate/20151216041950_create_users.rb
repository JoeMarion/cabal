class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.boolean :admin, null: false, default: false
      t.integer :network_id
      t.string :username
      t.string :email, null: false
      t.string :fname, null: false
      t.string :lname, null: false
      t.string :phone
      t.date :birthdate
      t.string :address
      t.text :about
      t.integer :post_id
      t.integer :comment_id
      t.integer :announcement_id
      t.integer :url_id
      t.string :password_hash
      t.timestamp
    end
  end
end
