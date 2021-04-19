class MessagesController < ApplicationController
    before_action :require_user
    skip_before_action :verify_authenticity_token

    def create
        message = current_user.messages.build(message_params)
        ActionCable.server.broadcast "chatroom_channel", mod_meassage: message_render(message)  if message.save
    end





    private
    def message_params
        params.require(:message).permit(:body)
    end

    def message_render(message)
        render(partial: 'message', local: {message: message})
    end
    
     
end