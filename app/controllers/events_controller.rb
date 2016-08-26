class EventsController < ApplicationController
  def index
    if params[:id]
      @events = User.find(params[:id]).events
    else
      @events = Event.all
    end
  end
  def show
    @users = User.all
    @event = Event.find(params[:id])
  end
  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end
  def new
    @event = Event.new
  end
  def edit
    @event = Event.find(params[:id])
  end
  def update
    @event = Event.find(params[:id])
      if @event.update_attributes(event_params)
        redirect_to @event
        else
        render('edit')
      end
  end
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    if @event.destroy
      redirect_to(:action => 'index')
    else
      render('delete')
    end
  end
  def complete
    @event = Event.find(params[:id])
    @event.complete = true
    if @event.save
      redirect_to(:action => 'index')
    else
      redirect_to root_path
    end
  end
  private
  def event_params
    params.require(:event).permit(:name, :description, {:user_ids => []})
  end
end