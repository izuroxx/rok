class SessionsController < ApplicationController
  
  def new

  end

  def create

  	user = User.find_by(email: params[:session][:email].downcase) # [:session] = { password: "...", email: "..." }
  	
  	 if user && user.authenticate(params[:session][:password])
        
        log_in user
        redirect_to user
  	 else
        flash[:error] = "Invalid email/password, butthead!"
        render 'new'
          	   
  	 end
  
  end

  def destroy
    log_out
    redirect_to root_url

  end

end
