class ChatroomController < ApplicationController

  
  def index
    @message = Message.new
    @messages = Message.all
    @messages = Message.custom_display
  end
end
