class UsersController < ApplicationController

 
 before_filter only: [:new, :create]

  def index
    @users = User.all.order("last_online_at DESC, updated_at DESC")
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      redirect_to users_path
    else
      render action: 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to new_user_path
    else
      render action: 'edit'
    end    
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:nickname)
  end



end
