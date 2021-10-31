class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = current_user.posts.build
  end

  def create
    ActiveRecord::Base.transaction do
      @post = current_user.posts.build(post_params)

      respond_to do |format|
        if @post.save
          format.html { redirect_to @post, notice: 'Post was successfully created.' }
        else
          format.html { render :new }
        end
      end
    end
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
