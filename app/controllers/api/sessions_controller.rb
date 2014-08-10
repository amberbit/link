class Api::SessionsController < Api::BasicController
  def create
    if user = authenticator.authenticate(params[:email], params[:password])
      session[:user_id] = user.id
      render json: { user_id: user.id }, status: 200
    else
      render json: { message: "Invalid e-mail or password" }, status: 422
    end
  end

  def destroy
    session[:user_id] = nil
    render json: { user_id: nil }, status: 200
  end

  private

  def authenticator
    EmailAndPasswordAuth
  end
end

