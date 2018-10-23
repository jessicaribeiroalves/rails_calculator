class CalculatorController < ApplicationController
    def index

    end
    def calculate
      # render json: params
      @operation = params[:operation]
      @x = Float(params[:x]) rescue false
      @y = Float(params[:y]) rescue false
      
      if @x != false && @y != false

        if @operation == "add" && @x ==
          @result = @x.to_f + @y.to_f
        elsif @operation == "subtract"
          @result = @x.to_f - @y.to_f
        elsif @operation == "multiply"
          @result = (@x.to_f) * (@y.to_f)
        elsif @operation == "divide"
          @result = (@x.to_f) / (@y.to_f)
        end

      else
        @result = "ERROR"
      end
  
      render "index"
    end

  end
  