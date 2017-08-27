class CommentsController < ApplicationController
  def create
    @blog = Blog.find(params[:blog_id])
    @blog.comments.create(comment_params)

    @blog.increment(:comment)
    @blog.save

    redirect_to blog_path(@blog)
  end

  def comment_params
    params.require(:comment).permit(:body)
  end

  def update
      # render plain: test

      # @blog = Blog.find(params[:id])
      # @blog.increment(:good)
      # @blog.save
  end
end
