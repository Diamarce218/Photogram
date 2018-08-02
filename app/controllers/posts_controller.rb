class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @posts = Post.latest(10) #Esta variable es para usarla en la vista
    @comment = Comment.new
  end

  def new
    @post= Post.new
  end

  def create
    @post= Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to posts_path, notice: 'succesfully created'
    else
      render :new
    end
  end

  def show
    @post=Post.find(params[:id])
    @comment = Comment.new
  end

  private
  def post_params
    params.require(:post).permit(:photo, :description, :location)
  end
end


