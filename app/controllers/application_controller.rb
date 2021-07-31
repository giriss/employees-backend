# frozen_string_literal: true

class ApplicationController < ActionController::API
  attr_reader :current_user

  def authenticate
    auth_token = request.headers['Authorization']&.sub('Bearer ', '')
    @current_user = User.find_from_token(auth_token)
    render json: { token: ['is invalid or has expired'] }, status: :unauthorized unless @current_user
  end
end
