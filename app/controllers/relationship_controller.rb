class RelationshipsController < ApplicationController

  def follow
    user = User.find(params[:followed_id])
    current_user.follow(user)
    redirect_to(:back)
  end

  def unfollow
    user = Relationship.find(params[:id]).followed
    current_user.unfollow(user)
    redirect_to(:back)
  end
end
