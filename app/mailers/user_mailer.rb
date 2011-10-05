class UserMailer < ActionMailer::Base
  default :from => "iitkgpmun@springfest.in"

  def confirmation_email(executive_board)
    @executive_board = executive_board
    @url = "http://iitkgpmun.heroku.com"
    mail(:to => executive_board.user.email, :subject => " Thank you for registering as #{executive_board.user.resource_type}")
       
  end

  def eb_registration_email(executive_board)
    @executive_board = executive_board  # ebreg.iitkgpmun@gmail.com
    mail(:to => "sricharan92@gmail.com", :subject => " Details after registering of #{executive_board.user.full_name} (#{executive_board.user.email}) ")
  end

  def eb_updation_email(executive_board)
    @executive_board = executive_board
    mail(:to => "sricharan92@gmail.com", :subject => " Details after updation of #{executive_board.user.full_name} (#{executive_board.user.email}) ")
  end
end
