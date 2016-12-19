class HomeController < ApplicationController
  def index
  end
  
  def contact
    
    
  end
  
  def sendemail
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
  end
end
