class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    authorize! :index, @user, message: "Not authorized as an administrator."
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    authorize! :update, @user, message: "Not authorized as an administrator."
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user], as: :admin)
      redirect_to users_path, notice: "User updated."
    else
      redirect_to users_path, alert: "Unable to update user."
    end
  end

  def destroy
    authorize! :destroy, @user, message: "Not authorized as an administrator."
    user = User.find(params[:id])
    if user == current_user
      redirect_to users_path, notice: "Can't delete yourself."
    else
      user.destroy
      redirect_to users_path, notice: "User deleted."
    end
  end

  def create
    authorize! :create, @user, message: "Not authorized as an administrator."
    @user = User.find(params[:id])
    if @user.save(params[:user], as: :admin)
      format.html { redirect_to action: :index }
    else
      redirect_to users_path, alert: "Unable to update user."
    end
  end

  def new
    @user = User.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end
end
