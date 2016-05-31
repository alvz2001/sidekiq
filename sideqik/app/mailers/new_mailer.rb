class NewMailer < ApplicationMailer
  default from: 'alvarodona8@gmail.com'

  def news_welcome(user)
    @user = user
    mail(to: @user, subject: "Welcome!")
  end
end
