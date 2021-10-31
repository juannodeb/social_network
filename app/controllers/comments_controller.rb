class CommentsController < ApplicationController
  def new
    @comment = current_user.comments.build
  end

  def create
    ActiveRecord::Base.transaction do
      @comment = current_user.comments.build(comment_params)

      respond_to do |format|
        if @comment.save
          format.html { redirect_to @comment.post, notice: 'Comment was successfully created.' }
        else
          format.html { render :new }
        end
      end
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id)
  end
end
