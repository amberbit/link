require 'rails_helper'

describe HomeController do
  render_views

  it 'should redirect to /dashboard if current user was found' do
    session[:user_id] = create_user.id
    get :index
    expect(response).to redirect_to('/dashboard')
  end

  it 'should stay oh homepage if no current user was found' do
    get :index
    expect(response).to be_ok
  end
end
