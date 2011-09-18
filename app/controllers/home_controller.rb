class HomeController < ApplicationController



  def delegate_registrations
    @delegate = Delegate.new
    @user = User.new
  end
 
  def eb_registrations
    @executive_board = ExecutiveBoard.new
    @user = User.new
  end
  
  def executive_board
    @executive_board = ExecutiveBoard.new( params[:executive_board] )
    @executive_board.save
    redirect_to home_content_path
  end 
  
  
  
  
end
