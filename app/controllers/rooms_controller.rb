class RoomsController < ApplicationController
  def index
    @rooms = Room.all
    @room = Room.new
    @users = User.all_except(current_user)
  end

  def show
    @current_room = Room.find(params[:id])
    @rooms = Room.all
    @users = User.all_except(current_user)
    @room = Room.new
    @message = Message.new
    @messages = @current_room.messages
  
    render :index
  end

  def create
    @room = Room.create(name: params['room']['name'])
  end
end
