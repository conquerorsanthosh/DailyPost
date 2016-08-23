class SessionsController < ApplicationController
=begin
  def create
    if user=User.authenticate(params[:email],params[:password])
      session[:id]=user.id
      redirect_to root_path ,:notify=>'Login Successful'

    else
      redirect_to new_session_path ,:notify=>'Login Failed,try again'
    end
  end
=end
end
