class EventsController < ApplicationController
  def index
    @events = Event.all
  end
  def show
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
        redirect_to(:action => 'show', :id => @event.id)
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
  private
  def event_params
    params.require(:event).permit(:name, :description, {:user_ids => []})
  end
end