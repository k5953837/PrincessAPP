class PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @post = Post.new
    @posts = Post.all.order('created_at DESC')
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      @posts = Post.all.order('created_at DESC')
      render 'index'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
  end

  def edit
  end

  def update
  end

  def destroy
    @post = Post.find(params[:id])
    @post.delete

    redirect_to @posts
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
