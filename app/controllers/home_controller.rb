class HomeController < ApplicationController
  def index
  end
  
  def contact
    
    
  end
  
  def sendemail
    @name = params[:name]
    @email = params[:email]
    @title = "[ 보낸사람 : "+ params[:name] + " ] " + params[:title]
    @message = params[:message]
    
    
    mg_client = Mailgun::Client.new("key-e2e4e3165833aa5dcfd672d0d3fd3478")

    message_params =  {
                       from: @email,
                       to:   'antcultures@gmail.com',
                       subject: @title,
                       text:    @message
                      }
    
    result = mg_client.send_message('sandbox59aa336279924d429a7dec2b59ea58b2.mailgun.org', message_params).to_h!
    
    message_id = result['id']
    message = result['message']
    
    
  end
end
