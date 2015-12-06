class UsersController < ApplicationController
    before_filter :authorize, only: [:show, :index]

    def index
        @users = User.all
    end
    
    def new 
        @user = User.new
    end
    
    def create 
        @user = User.new(user_params) # metoda, def poniżej
        
        if @user.save
            log_in @user
            redirect_to users_path

        else
            render :new 
        end
    end
    
    def show
        @user = User.find(params[:id])
    end
    
    def edit
        @user = User.find(params[:id])
    end
    
    def update
        @user = User.find(params[:id])
        
        if @user.update_attributes(user_params)
            redirect_to user_path(@user)
        else
            render :edit
            
        end
    end
    
    
    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_path
    end
    
    private

    def user_params
        params.require(:user).permit(:imie, :nazwisko, :data_ur, :email, :login, :password, :password_confirmation) 
    end
    
    def authorize
    if current_user.nil?
      redirect_to root_url
    else
      if @post && @post.user != current_user
        redirect_to root_path
      end
    end
  end
end


