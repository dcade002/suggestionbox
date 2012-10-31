class PostsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]

  def index

  end

  def create
    @post = current_user.posts.build(params[:post])
    @post.votes = 0
    if @post.save
      flash[:success] = "Post created"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @post.destroy
    redirect_to root_url
  end

  def increment_vote
    render status: :bad_request and return unless params[:feed_item].present? || params[:rating].present? || params[:user_id].present?

    render status: :bad_request and return if params[:rating].to_i > 5 || params[:rating].to_i < 0
    post = Post.find(params[:feed_item])
    post.rate_it params[:rating], current_user
    render json: { post: Post.find( params[:feed_item] ) }, status: :ok
  end

  #def decrement_vote
  #  render status: :bad_request and return unless params[:feed_item]
  #  post = Post.decrement_counter("votes", params[:feed_item])
  #  render json: { post: Post.find( params[:feed_item] )}, status: :ok
  #end

  private
    def correct_user
      @post = current_user.posts.find_by_id(params[:id])
      redirect_to root_url if @post.nil?
    end
end
