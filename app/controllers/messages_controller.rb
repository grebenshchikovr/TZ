class MessagesController < ApplicationController
  
  def create
    @user = User.find(params[:user_id])
    @user.messages.create(message_params)

    redirect_to user_path(@user)
  end

  private

  def message_params
    params.require(:message).permit(:user_id, :sender_id, :receiver_id, :message)
  end


end
