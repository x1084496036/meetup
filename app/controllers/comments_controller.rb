class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comments_params)
    @comment.save
    respond_to do |format|
      format.js
    end
  end
  private
    def comments_params
      params.require(:comment).permit(:content,:issue_id,:user_id)
    end
end
