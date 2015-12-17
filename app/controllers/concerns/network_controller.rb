class HomeController < ActionController::Base

  layout "application"

  def index
    render :'networks/index'
  end

end