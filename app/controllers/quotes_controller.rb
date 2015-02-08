class QuotesController < ApplicationController
	def random
		quote = Quote.order("RANDOM()").first
		render json:quote
	end
end
