class PicturesController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @post.pictures.attach(params[:pictures])
    redirect_to post_path(@post)
  end

end
