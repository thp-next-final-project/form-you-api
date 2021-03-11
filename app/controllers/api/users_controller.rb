class Api::UsersController < Api::BaseController

  before_action :find_user, only: %w[show]
  skip_before_action :authenticate_user!, only: [:show]

  def show
    p "**************************"
    p "**************************"
    p "**************************"
    p @user.to_h
    p "**************************"
    p "**************************"
    render json: @user.to_h.to_json

  end

  private

  def find_user
    @user = User.find(params[:id])
  end

end
