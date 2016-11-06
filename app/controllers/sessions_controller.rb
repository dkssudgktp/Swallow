class SessionsController < ApplicationController
  def login
  end

  def create
    user = User.find_by(email: params[:email].downcase)
    if user && user.authenticate(params[:password])
      log_in(user)
      redirect_to :root
    else
      flash.now[:alert] = "이메일 또는 패스워드가 잘못되었습니다."
      render 'login'
    end
  end

  def delete
    log_out
    redirect_to :root
  end
end
