require 'rest_client'

class SlackService < ChatService
	def send_quote(quote)
		url = Rails.configuration.x.slack.webhook
		RestClient.post url, { 'text' => quote.quote }.to_json
	end
end