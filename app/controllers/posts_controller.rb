class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def show
    @post = Post.new(post_params)
  end

  private

  def post_params
    params.require(:post).permit(:image, :image_cache)
  end

end
