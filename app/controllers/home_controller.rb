class HomeController < ApplicationController
	before_action :authenticate_user!
	
	def homepage
	end

	def dashboard
	end

end