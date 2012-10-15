class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @post = current_user.posts.build
      @feed = Post.paginate(page: params[:page]) #current_user.feed.paginate(page: params[:page])
    end
  end

  def about
  end
end
