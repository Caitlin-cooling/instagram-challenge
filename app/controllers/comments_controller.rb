class CommentsController < ApplicationController
  before_action :find_commentable, only: :create

  def new
    @comment = Comment.new
    @post_id = params[:post_id]
  end

  def create
    @comment = @commentable.comments.new do |comment|
      comment.comment = params[:comment_text]
      comment.user = current_user
    end
    @comment.save
    redirect_to '/'
  end

  def destroy
    @comment = current_user.comments.find(params[:id])
    @comment_id = params[:id]
    @comment.destroy
  end

  private
  def find_commentable
    @commentable_type = params[:commentable_type].classify
    @commentable = @commentable_type.constantize.find(params[:commentable_id])
  end
end
