class CommentsController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
    @comment = Comment.new
  end

  def create
    @project = Project.find(params[:project_id])
    @comment = @project.comments.new(comment_params)
    if @comment.save
      flash[:notice] = "Comment successfully added!"
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def edit
    @comment = Comment.find(params[:id])
    @project = @comment.project
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      flash[:notice] = "Comment successfully updated!"
      redirect_to  project_path(@comment.project)
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:notice] = "Comment successfully deleted!"
    redirect_to project_path(@comment.project)
  end

  private
    def comment_params
      params.require(:comment).permit(:body, :project_id, :user_id)
    end
end
