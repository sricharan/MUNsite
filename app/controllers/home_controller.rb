class HomeController < ApplicationController
  before_filter :authenticate_user!, :only => [:eb_list]

  def about
  end

  def meet_the_team
  end

  def awards
  end

  def coming_soon
  end

  def eb
  end

  def ip
  end

  def schedule
  end

  def successful_registration
  end

  def successful_updation
  end

  def key_dates
  end

  def conference_fees
  end

  def historic_ga
  end

  def unsc
  end

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
    @eb = ExecutiveBoard.all
    @existing_eb = nil
    @eb.each do |eb|
      if eb.user.email == @executive_board.user.email
        @existing_eb = eb
      end
    end
        
    if @executive_board.save 
      UserMailer.confirmation_email(@executive_board).deliver
      UserMailer.eb_registration_email(@executive_board).deliver
      redirect_to successful_registration_path
    else
      if @existing_eb == nil
        render :eb_registrations
      else
        if (@executive_board.user.full_name == nil) || (@executive_board.user.gender == nil) || (@executive_board.user.course == nil) || (@executive_board.user.year == nil) || (@executive_board.user.place_of_residence== nil) || (@executive_board.user.mobile == nil) 
          render :eb_registrations
        else 
          @existing_eb.destroy   #is there no way to update attributes in MTI (while checking with uniqueness of email) ?
          @executive_board.save
          UserMailer.eb_updation_email(@executive_board).deliver
          redirect_to successful_updation_path 
        end  
      end
    end
  end 
  
  def eb_list
    @executive_board = ExecutiveBoard.all
  end 
  
  
end
