class PagesController < ApplicationController
	layout 'front'

	def home
		@listings = Listing.publish
	end
end
