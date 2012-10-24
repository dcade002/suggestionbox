class FeedController < ApplicationController
  def index
    @feed = Post.where("created_at > ?", Time.at(params[:after].to_i + 1))
  end
end
