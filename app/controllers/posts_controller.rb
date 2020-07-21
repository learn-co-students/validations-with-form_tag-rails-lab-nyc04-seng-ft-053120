class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.assign_attributes(post_params)

    if @post.valid?
      @post.save
      redirect_to @post
    else
      render :edit
    end

  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
