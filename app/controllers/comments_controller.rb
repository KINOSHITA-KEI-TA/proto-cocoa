class CommentsController < ApplicationController
  def create
    Comment.create(comment_params)
    redirect_to  "/events/#(event.id)"
    # "/events/#{comment.event.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:name,:text).merge(user_id: current_user.id, event_id: params[:event_id])
  end
end
