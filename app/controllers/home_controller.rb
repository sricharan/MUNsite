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
      UserMailer.confirmation_email(@executive_board.user).deliver
      UserMailer.eb_registration_email(@executive_board).deliver
      redirect_to home_index_path
    else
      if @existing_eb == nil
        render :eb_registrations
      else
        if @executive_board.user.valid? 
          @existing_eb.update_attributes(params[:executive_board])
        else 
          render :eb_registrations
        end  
      end
    end
  end 
  
  def eb_list
    @executive_board = ExecutiveBoard.all
  end 
  
  
end
