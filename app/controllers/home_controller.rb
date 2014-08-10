class HomeController < ApplicationController
  include Authentication
  layout 'public'

  def index
    redirect_to dashboard_path if current_user
  end
end
