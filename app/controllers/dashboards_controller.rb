class DashboardsController < ApplicationController
  include Authentication

  def show
    redirect_to(root_path) and return if current_user.nil?
    render text: 'Dashboard'
  end
end
