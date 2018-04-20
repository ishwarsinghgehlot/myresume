class ApplicationController < ActionController::Base
 protect_from_forgery with: :exception

 layout :setLayout

def setLayout
    # "application_outer" unless user_signed_in? || "application_outer"
    if user_signed_in? 
      "application_inner"
    else
      "application"       
    end
   end
end