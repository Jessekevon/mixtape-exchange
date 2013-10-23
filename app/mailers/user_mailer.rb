# Similar to controllers, I want a variable to be accessible to the view, so i store it in an instance variable.
# 
# Mail is a method that prepares an e-mail message.
class UserMailer < ActionMailer::Base
  def welcome_email(user)
    @user = user

    mail(to: @user.email, 
      from: 'themixtape@gmail.com',
      subject: 'Welcome to Mixtape:Exchange!')
  end
end
