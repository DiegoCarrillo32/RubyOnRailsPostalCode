class UsersController < ApplicationController

  def index
    @users = User.all
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      render :show
    else
      render :new
    end
  end
  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to users_path
    else
      render :edit
    end
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  def signin
    #save in local storage

    @user = User.find(params[:id])

    if @user.password == params[:password]
      @postalcode = Postalcode.all
      puts @postalcode.inspect
      render :show

    else

      render 'welcome/index'
    end





  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end


end
