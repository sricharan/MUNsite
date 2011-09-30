class UserMailer < ActionMailer::Base
  default :from => "iitkgpmun@springfest.in"

  def confirmation_email(user)
    @user = user
    @url = "http://iitkgpmun.heroku.com"
    mail(:to => user.email, :subject => " Thank you for registering as #{user.resource_type}")
       
  end

end
