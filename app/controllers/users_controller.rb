class UsersController < ApplicationController
  def join
  end

  def create
    User.create(name: params[:name],
          email: params[:email],
          password: params[:password],
          password_confirmation: params[:password_confirmation],
          gender: params[:gender])
    redirect_to :root
  end
end
