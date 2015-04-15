class NotificationMailer < ActionMailer::Base
  default from: "no-reply@wherethepho.com"

  def comment_added
  	mail(to: "allencoin@gmail.com", subject: "Someone commented on your pho place!")
  end
end
