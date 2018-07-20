class PostsController < ApplicationController
  def index
    @posts= Post.select(:description).order(created_at: :desc).limit(10)
  end

  def new
  end

  def create
  end

  def show
  end
end
