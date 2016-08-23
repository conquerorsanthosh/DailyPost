class CommentsController < ApplicationController
  #before_action :set_comment, only: [:show, :edit, :update, :destroy]
  before_action :load_article

  private
  def load_article
    @article=Article.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:name,:email,:body)
  end

  public
  def create
    @comment=@article.new(comment_params)
    if @comment.save
      redirect_to @article ,notice: 'Thanks for your comments'
    else
      redirect_to @article ,alert: 'Unable to add comment'
    end
  end

  def destroy
    @article.comments.find(params[:id]).destroy
    redirect_to @article , notice: 'Comment Deleted '
  end

  private
  def set_comment
      @comment = Comment.find(params[:id])
  end

  def comment_params
      params.fetch(:comment, {})
  end


end
