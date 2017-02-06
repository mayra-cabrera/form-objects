class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @signup = Signup.new
  end

  def create
    @signup = Signup.new(signup_params)
    if @signup.save
      redirect_to user_path(@signup.user)
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def signup_params
    params.require(:signup).permit(:user_first_name, :company_name)
  end
end
