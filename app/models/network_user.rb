class NetworkUser < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :networks
  belongs_to :users
end
