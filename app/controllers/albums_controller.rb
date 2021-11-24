class AlbumsController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @user.albums.attach(params[:albums])
    redirect_to user_path(@user)
  end

end
