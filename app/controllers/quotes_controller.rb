class QuotesController < ApplicationController
    before_action :authenticate_user
    
    def get_quotes
        quotes = QuoteApiService.get_quotes(params[:tag])
        render json: quotes, root: "quotes", adapter: :json
    end
end
