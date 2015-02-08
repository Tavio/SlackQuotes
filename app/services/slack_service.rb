require 'rest_client'

class SlackService < ChatService
	def send_quote(quote)
		url = ENV['SLACK_WEBHOOK']
		text = '"' + quote.quote + '" - ' + quote.author 
		body = {
			:text => text,
			:icon_url => 'https://pilotmoon.com/popclip/extensions/icon/quotes.png',
			:username => 'Quote'
		}

		RestClient.post url, body.to_json
	end
end