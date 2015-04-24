class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :place
	after_create :send_comment_email

	letsrate_rateable "overall"

	def send_comment_email
		NotificationMailer.comment_added(self).deliver
	end
end