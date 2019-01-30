class UsersController < ApplicationController
  def index
    @tweeets = Tweeet.all.order("created_at DESC")
    @tweeets = Tweeet.all.where("user_id = ?", User.find_by_username(params[:id]), id)
  end

  def show
  end
end
