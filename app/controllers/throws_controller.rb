class ThrowsController < ApplicationController

	def new
		@sign = { "Rock" => 1, "Paper" => 2, "Scissors" => 3 }
	end

	def create
		@choice = params[:sign].to_i
		opponent = rand(3) + 1
		@result = (@choice - opponent + 3) % 3

		if opponent == 1
			@opponent_show = "Rock"
		elsif opponent == 2
			@opponent_show = "Paper"
		else opponent == 3
			@opponent_show = "Scissors"
		end 

		render 'show'
	end
	
	def show
	end

end