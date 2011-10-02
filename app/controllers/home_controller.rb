class HomeController < ApplicationController
  before_filter :authenticate_user!, :only => [:eb_list]


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
    if @executive_board.save
      UserMailer.confirmation_email(@executive_board.user).deliver
      UserMailer.eb_registration_email(@executive_board).deliver
    end
    redirect_to home_index_path
  end 
  
  def eb_list
    @executive_board = ExecutiveBoard.all
  end 
  
  
end
