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

  def set_dislike
    ActiveRecord::Base.transaction do
      current_user.interactions.like.posts.where(interacted_on_id: params[:id])&.destroy_all
      @interaction = current_user.interactions.build(action: 1, interacted_on_id: params[:id], interacted_on_type: 'Post')

      respond_to do |format|
        if @interaction.save
          format.html { redirect_to post_path(@interaction.interacted_on_id) }
        end
      end
    end
  end

  def set_like
    ActiveRecord::Base.transaction do
      current_user.interactions.dislike.posts.where(interacted_on_id: params[:id])&.destroy_all
      @interaction = current_user.interactions.build(action: 0, interacted_on_id: params[:id], interacted_on_type: 'Post')

      respond_to do |format|
        if @interaction.save
          format.html { redirect_to post_path(@interaction.interacted_on_id) }
        end
      end
    end
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
