class StocksController < ApplicationController
    def search
       if params[:stock]
            @stock = Stock.find_by_ticker(params[:stock])
            @stock ||= Stock.new_from_lookup(params[:stock])
# "||=" when @stock is nil, false, in other words do nothing            
        end
        
        
        if @stock
             #render json: @stock
             render partial: 'lookup'
        else
        
        render status: :not_found, nothing: true
        
        end
        
    end
end 
        
        
        