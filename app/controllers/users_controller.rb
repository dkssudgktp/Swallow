class UsersController < ApplicationController
  def join
  end

  def profile_set
    if user_signed_in?
      
    else
      redirect_to :back
    rescue ActionController::RedirectBackError
      redirect_to root_path
    end
  end

  def create
    if params[:gender] == "man"
      profile = "bagic_man.jpg"
    else
      profile = "bagic_woman.jpg"
    end
    User.create(name: params[:name],
          email: params[:email],
          password: params[:password],
          password_confirmation: params[:password_confirmation],
          gender: params[:gender],
          profile: profile)
    redirect_to :root
  end
end
