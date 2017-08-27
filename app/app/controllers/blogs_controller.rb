class BlogsController < ApplicationController
  before_action :set_blog, only: %i[show edit update destroy]

  def index
    @blogs = Blog.all.order(postnum: 'desc')
  end

  def show
    @blogs = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(postnum: Blog.count, title: params[:blog][:title], good: 0,
                     comment: 0, posttime: Time.zone.now.strftime('%Y/%m/%d/%H-%M-%S'))
    if @blog.save

      redirect_to blogs_path
    else
      render render 'new'
    end
  end

  def update
    @blog = Blog.find(params[:id])
    @blog.increment(:good)
    @blog.save
    redirect_to request.referer

    # redirect_to root_path
  end

  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'Blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_blog
    @blog = Blog.find(params[:id])
  end

  def blog_params
    params.require(:blog).permit(:postnum, :title, :good, :comment, :posttime)
  end
end
