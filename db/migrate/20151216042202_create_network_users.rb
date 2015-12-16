class CreateNetworkUsers < ActiveRecord::Migration
  def change
    create_table :networks_users do |t|
      t.integer :user_id
      t.integer :network_id
    end
  end
end
