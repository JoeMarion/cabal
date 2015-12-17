class NetworkController < ActionController::Base

  layout "application"

  def index
    render :'networks/index'
  end

end