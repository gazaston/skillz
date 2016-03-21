class Slack::Responder

  def initialize(message)
    @message = message
  end

  def respond?
    response.present?
  end

  def response
    @response ||= "You're currently #{message}\n<https://fg-currently.herokuapp.com/|See who's currently where>"
    # @response ||= "https://fg-currently.herokuapp.com/"
  end

  private

  attr_reader :message

end
