class MasterbanksController < ApplicationController
	def show
		@masterbank = Masterbank.find(params[:id])
		@banks = Masterbank.banks
	end
	def index

	end
end
