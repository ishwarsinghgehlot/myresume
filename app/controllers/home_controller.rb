class HomeController < ApplicationController
	
	layout "application_website"

  def index
  	@education = Education.all.order(id: :desc)
  	@experience = Experience.all.order(id: :desc)
  	@testimonials = Testimonial.all.order(id: :desc)
  end
end
