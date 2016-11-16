class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
   # @user = User.new(user_p)
    @user = User.new(name)

    @user.save
  end

  def show
    @user = User.find(params[:id])
  end

  
  private
    def user_p
      params.require(:user).permit(:name)
    end
end
