class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @tweeets = @user.tweeets
    @tweeet = Tweeet.new
  end
end
