class ConversationsController < ApplicationController
  def show
    @conversation = Conversation.find(params[:id])
    @message = Message.new
  end

  def create
    @challenge = Challenge.find(params[:challenge_id])
    @conversation = Conversation.find_or_create_by(challenge: @challenge)
    redirect_to @conversation
  end
end
