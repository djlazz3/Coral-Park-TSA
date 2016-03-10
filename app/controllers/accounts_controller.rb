class AccountsController < ApplicationController
  def index
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
  end
  def destroy
    @ue = User.find(params[:id2]).events.destroy(Event.find(params[:id]))
      redirect_to :action => 'index'
  end
end
