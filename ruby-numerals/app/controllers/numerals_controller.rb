require 'humanize'

class NumeralsController < ApplicationController

	def index
		@numeral = params[:numeral]
		@humanized_show = ! @numeral.nil?
		@humanized = @numeral.to_i.humanize
	end
end
