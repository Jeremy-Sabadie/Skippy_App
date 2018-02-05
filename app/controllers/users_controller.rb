class UsersController < ApplicationController
  def home
    
  end

  def index
    #@users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(users_params)
    if @user.save
      log_in @users
      flash[:success] = "Bienvenu vers une totale pensée cosmique vers un nouvel age réminiscent"
      redirect_to @user
    else 
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
       redirect_to @user_path
    else
      render 'new'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path
  end

  private

  def user_params
      params.require(:user).permit(:email, :password)
    end

end
