class LookController < ApplicationController
   before_filter :check_login, :only => :at
   
   def getter
   end
   private
     def check_login
	    unless session[:user_name]
		  redirect_to(:action => "getter")
		end
	 end
end
