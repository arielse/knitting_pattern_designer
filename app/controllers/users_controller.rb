class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new(username: "ariel")
  end

  def create
    @user = User.new
    @user.username = params[:username]
    @user.email = params[:email]
    if User.find_by(username: params[:username])
      @errors = "Username already taken"
      render :new
    else
      @user.password = params[:password]
      @user.save
      session[:user_id] = @user.id
      redirect_to '/'
    end
  end
end
