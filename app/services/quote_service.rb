class QuoteService
	def initialize(chat_service)
		@chat_service = chat_service
	end

	def sendRandomQuote()
		quote = Quote.order("RANDOM()").first
		@chat_service.send_quote(quote)
	end
end