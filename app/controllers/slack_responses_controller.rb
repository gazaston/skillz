class SlackResponsesController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def index
    # @updates = User.all.each { |user| user.updates.last.body }
  end

  def create
    verify_slack_token
    person = Person.where(slack_id: params[:user_id], slack_name: params[:user_name]).first_or_create
    person.slack_name = params[:user_name]
    # update = Update.new(update_params)
    # update.body = params[:text]
    # update.user_id = user.id
    # update.save
    render json: { text: responder.response.to_s }
  end

  private

  def responder
    @responder ||= Slack::Responder.new(params[:text])
  end

  def verify_slack_token
    render nothing: true, status: :forbidden and return unless Slack::TOKENS.include?(params[:token])
  end

  def update_params
    params.permit(:user, :body)
  end

end
