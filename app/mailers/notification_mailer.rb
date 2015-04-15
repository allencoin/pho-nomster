class NotificationMailer < ActionMailer::Base
  default from: "no-reply@wherethepho.com"

  def comment_added(comment)
  	@place = comment.place
  	@place_owner = @place.user

  	mail(to: @place_owner.email, subject: "Someone commented on #{@place.name}!")
  end
end
