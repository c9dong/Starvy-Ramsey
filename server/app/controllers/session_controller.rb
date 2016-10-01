class SessionController < ApplicationController
  def create
    username = params[:username]
    fbToken = params[:fbToken]

    user = User.findByUsername(username)
    puts user.inspect
    if !user.empty?
      session[:user_id] = user.id
    end

    redirect_to root_url
  end

  def destroy
    session[:user_id] = nil

    redirect_to root_url
  end
end
