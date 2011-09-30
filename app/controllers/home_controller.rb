class HomeController < ApplicationController



  def delegate_registrations
    @delegate = Delegate.new
    @user = User.new
  end
 
  def eb_registrations
    @executive_board = ExecutiveBoard.new
    @executive_board.build_user 
  end
  
  def executive_board
    @executive_board = ExecutiveBoard.new( params[:executive_board] )
    @executive_board.save
    #UserMailer.confirmation_email(ExecutiveBoard.last.user).deliver
    
    redirect_to home_index_path
  end 
  
  
  
  
end
