class UsersController < ApplicationController

    def index
      @users = User.all
    end

    def home
     @home
    end

    def new
     @user = User.new
    end

    def create
      @user = User.new(user_params)
      @user.save
    end

    def show
      @user = User.find(params[:id])
    end

    def edit
      @user = User.find(params[:id])
    end

    def update
      @user = User.find(params[:id])
      @user.update(user_params)
      render 'show'
    end

    def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to users_path
    end


  private

  def user_params
    params.require(:user).permit(
    :name, :age, )
  end
end
