class SessionsController < ApplicationController
  
  def new

  end

  def create

  	user = User.find_by(email: params[:sessions][:email])
  	
  	if user && user.authenticate(params[:session][:password])
  	else
  	render 'new'
  	end
  
  end

  def destroy
  end

end