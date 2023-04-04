class PostsController < ApplicationController
  def index
    render json: Post.all
  end
  def create
    post = Post.create!(post_params)
    render json: post
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    head :no_content
  end

  private
  def post_params
    params.permit(:dog_id, :user_id, :description)
  end
end
