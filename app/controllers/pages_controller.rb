class PagesController < ApplicationController
  def home
    @application = ::Doorkeeper::Application.find_by(name: "Web Client")

    @application = {
      name: @application.name,
      client_id: @application.uid,
      client_secret: @application.secret
    }

    puts "Client IDDDDDDDDDDDDD: #{@application[:client_id]}" 
    puts "Client shhhhhh: #{@application[:client_secret]}" 
    puts "Name: #{@application[:name]}" 
  end
end
