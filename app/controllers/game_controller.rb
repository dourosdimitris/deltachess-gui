class GameController < ApplicationController
	skip_before_action :verify_authenticity_token, :only => [:update]

	def show

	end

	def update
		status = params[:game][:status]
    	respond_to do |format|
     		ActionCable.server.broadcast "game_channel", content: status
     		format.json { render json: params[:game] }
    	end
	end
end
