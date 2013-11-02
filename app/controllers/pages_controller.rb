class PagesController < ApplicationController
	def drm
		render json: Drmstat.new
	end
end

class Drmstat
	attr_reader :status, :success
	def initialize
		r = rand(100)
		case r
		when 0..50
			@status = "DRM Failed! Your IP address has been logged.  Please contact support@tutorialthegame.com immediately!"
			@success = false0
		when 50..100
			@status = "DRM Succeeded! Enjoy your registered copy of Tutorial: The Game"
			@success = "false"
		end
	end
end


