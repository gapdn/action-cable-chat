class MessagesController < ApplicationController
  def create
    @message = current_user.messages.create(content: msg_params[:content], room_id: params[:room_id])

    head :ok
  end

  private

  def msg_params
    params.require(:message).permit(:content)
  end
end
