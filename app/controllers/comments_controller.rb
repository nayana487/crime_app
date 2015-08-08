class CommentsController < ApplicationController

  def new
    @incident = Incident.find(params[:incident_id])
    @comment = Comment.new
  end

  def create
    @incident = Incident.find(params[:incident_id])
    @comment = @incident.comments.create(comment_params.merge(user_id: session[:user]["id"]))
    redirect_to incident_path(@incident)
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def destroy
    @comment = Comment.find(params[:id])
    @incident = @comment.incident_id
    @comment.destroy
    redirect_to incident_path(@incident)
  end

  def comment_params
  params.require(:comment).permit(:name, :content)
  end
end
