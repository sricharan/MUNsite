class HomeController < ApplicationController

  def index
    
  end

  def home_content
  end

  def delegate_registrations
    @delegate = Delegate.new
    @user = User.new
  end
 
  def delegates
  end 
  
  def ip_registrations
    @international_press = InternationalPress.new
  end
  
  def mun_conference_content
  
  end
  
  
end
