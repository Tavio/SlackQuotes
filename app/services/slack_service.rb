require 'rest_client'

class SlackService < ChatService
	def send_quote(quote)
		url = Rails.configuration.x.slack.webhook
		text = '"' + quote.quote + '" - ' + quote.author 
		body = {
			:text => text,
			:icon_url => 'https://pilotmoon.com/popclip/extensions/icon/quotes.png',
			:username => 'Quote'
		}


		RestClient.post url, body.to_json
	end
end