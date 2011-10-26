class HomeController < ApplicationController
  before_filter :authenticate_user!, :only => [:eb_list]

  def what_is_iitkgpmun
  end

  def travel_planning
  end

  def why_iitkgpmun
  end

  def team
  end

  def keynote_speaker
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

  def study_guides
  end

  def useful_links
  end

  def conference_rules
  end

  def contact_us
  end

  def historic_ga
  end

  def unsc
  end

  def various_cities_to_kgp
  end

  def various_cities_to_kolkata
  end

  def delegate_registrations
    @delegate = Delegate.new
    @delegate.build_user 
  end

  def delegate
    @delegate = Delegate.new( params[:delegate] )
    @d = Delegate.all
    @existing_d = nil
    @d.each do |d|
      if d.user.email == @delegate.user.email
        @existing_d = d
      end
    end
        
    if @delegate.save 
      UserMailer.d_registration_email(@delegate).deliver
      redirect_to successful_registration_path
    else
      if @existing_d == nil
        render :delegate_registrations
      else
        if (@delegate.user.full_name == nil) || (@delegate.user.gender == nil) || (@delegate.user.course == nil) || (@delegate.user.year == nil) || (@delegate.user.place_of_residence== nil) || (@delegate.user.mobile.scan(/\A[\d \+ \-]+\Z/).empty?) || (@delegate.user.institute == nil) || (@delegate.committee_1.empty?) || (@delegate.country_1_1.empty?) || (@delegate.country_1_2.empty?) ||  (@delegate.country_1_3.empty?) || (@delegate.country_1_4.empty?) || (@delegate.country_2_1.empty?) || (@delegate.country_2_2.empty?) || (@delegate.country_2_3.empty?) || (@delegate.country_2_4.empty?) || (@delegate.committee_2.empty?) || (@delegate.muns_as_delegate.empty?)
          render :delegate_registrations
        else 
          @existing_d.destroy   #is there no way to update attributes in MTI (while checking with uniqueness of email) ?
          @delegate.save
          UserMailer.d_updation_email(@delegate).deliver
          redirect_to successful_updation_path 
        end  
      end
    end
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
        if (@executive_board.user.full_name == nil) || (@executive_board.user.gender == nil) || (@executive_board.user.course == nil) || (@executive_board.user.year == nil) || (@executive_board.user.place_of_residence== nil) || (@executive_board.user.mobile.scan(/\A[\d \+ \-]+\Z/).empty?) || (@executive_board.position_preference == nil) || (@executive_board.council_preference == nil) || (@executive_board.muns_as_eb == nil) || (@executive_board.muns_as_delegate == nil) || (@executive_bord.user.institute == nil)
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
