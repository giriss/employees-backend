# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authenticate, :set_user, only: %i[show destroy]

  # GET /users/1
  # GET /users/1.json
  def show; end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    if @user.save
      render :show, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
  end

  # DELETE /users/login
  # DELETE /users/login.json
  def login
    @user = User.find_by(username: user_params.fetch(:username)).authenticate(user_params.fetch(:password))
    if @user
      render :show
    else
      render json: { login: ['invalid username or password'] }, status: :unauthorized
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    render json: { user: ['not allowed to access'] }, status: :forbidden if params[:id].to_i != @current_user.id
    @user = @current_user
  end

  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:username, :password)
  end
end
