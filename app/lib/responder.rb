class Slack::Responder

  def initialize(message)
    @message = message
  end

  def respond?
    response.present?
  end

  def response
    @response ||= "Hi"
    # @response ||= "https://fg-currently.herokuapp.com/"
  end

  private

  attr_reader :message

end
