class UsersController < ApplicationController
  def show
    @user = User.find_by(username: params.fetch(:user))

    render "show"
  end
end
