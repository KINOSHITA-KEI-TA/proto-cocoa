class CommentsController < ApplicationController
  def create
    Comment.create(comment_params)
    redirect_to  "/events/#(event.id)"
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      redirect_to root_path, notice: "削除が完了しました"
    else
      redirect_to root_path, alert: "削除が失敗しました"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:name,:text,:temperature_id,:image).merge(user_id: current_user.id, event_id: params[:event_id])
  end
end
