class RelationshipsController < ApplicationController

  def follow
    user = User.find(params[:id])
    current_user.follow(user)
    redirect_to root_path
  end

  def unfollow
    user = User.find(params[:id])
    current_user.unfollow(user)
    redirect_to root_path
  end
end
