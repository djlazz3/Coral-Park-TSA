class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    puts :event
    @event = Event.find(params[:event])
  end
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to events_index_path
    else
      render('new')
    end
  end
  def edit
    @comment = Comment.find(params[:id])
  end
  def update
    @comment = Comment.find(params[:id])
    if @comment.update_attributes(comment_params)
      redirect_to event_path(@comment.events_id)
    else
      render('edit')
    end
  end
  def destroy
    @comment = Comment.find(params[:id])
    @comment.delete
    if @comment.delete
      redirect_to :back
    else
      render('delete')
    end
  end
  private
  def comment_params
    params.require(:comment).permit(:title,:description, :users_id, :events_id, :start_time, :end_time)
  end
end
