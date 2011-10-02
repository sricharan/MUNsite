class UserMailer < ActionMailer::Base
  default :from => "iitkgpmun@springfest.in"

  def confirmation_email(user)
    @user = user
    @url = "http://iitkgpmun.heroku.com"
    mail(:to => user.email, :subject => " Thank you for registering as #{user.resource_type}")
       
  end

  def eb_registration_email(executive_board)
    @executive_board = executive_board
    mail(:to => "sricharan92@gmail.com", :subject => " Details of #{executive_board.user.email} with id #{executive_board.id}")

  end

end
