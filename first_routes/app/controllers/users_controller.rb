class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(user_params)
    if user.save
      render json: @user, status: :ok
    else
      render json: @user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    if @user
      render json: @user
    else
      render plain: "User not found", status: 404
    end
  end

  def update
    @user = User.find_by(id: params[:id])
    if @user
      if @user.update(user_params)
        render json: @user, status: :ok
      else
        render json: @user.errors.full_messages, status: 400
      end
    else
      render plain: "User not found", status: 404
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    if @user
      @user.destroy
      render json: @user, status: :ok
    else
      render plain: "User not found", status: 404
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email)
  end

end
