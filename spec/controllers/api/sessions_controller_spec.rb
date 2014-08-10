require 'rails_helper'

describe Api::SessionsController do
  render_views

  context 'for cookie-based authentication' do
    before { create_user }

    context '#create' do
      it 'should log user in' do
        post :create, email: 'john.doe@example.com', password: 'test4best'
        expect(response.status).to eq(200)
        expect(session[:user_id]).to eq(User.first.id)
      end

      it 'should return 422 when credentias were not recognized' do
        post :create, email: 'john.doe@example.com', password: 'wrongone'
        expect(response.status).to eq(422)
        expect(session[:user_id]).to be_nil
      end
    end

    context '#destroy' do
      it 'should sign user out' do
        post :create, email: 'john.doe@example.com', password: 'test4best'
        post :destroy

        expect(response.status).to eq(200)
        expect(session[:user_id]).to be_nil
      end
    end
  end
end
