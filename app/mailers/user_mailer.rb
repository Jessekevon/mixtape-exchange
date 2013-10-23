class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome_email(user)
    @user = user
    @url = 'http://blah.com/login'
    mail (to: @user.email, subject: 'Welcome to Mixtape:Exchange!')
  end
end
