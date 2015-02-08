class QuotesController < ApplicationController
	def random
		QuoteService.new(SlackService.new).sendRandomQuote()
		render :nothing => true
	end
end
