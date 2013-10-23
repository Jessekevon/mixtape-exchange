class UserMailer < ActionMailer::Base
  default from: "jessekevon@gmail.com"

  def welcome_email(user)
    @user = user
    @url = 'http://blah.com/login'
    mail (to: @user.email, subject: 'Welcome to Mixtape:Exchange!')
  end
end
