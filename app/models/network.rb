class Network < ActiveRecord::Base
  # Remember to create a migration!
  has_many :users, through: :networks_users
end
