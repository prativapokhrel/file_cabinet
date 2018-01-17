class PostLikesController < ApplicationController

  def like
    PostLike.create(user_id: current_user.id, doc_id: params[:doc_id])

    redirect_to :controller => 'docs', :action => 'show', id: params[:doc_id]
  end 

  def unlike
    like = PostLike.all.where(user_id: current_user.id, doc_id: params[:doc_id]).last
    like.destroy
    redirect_to :controller => 'docs', :action => 'show', id: params[:doc_id]
  end 
end 