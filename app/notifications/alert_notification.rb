# To deliver this notification:
#
# AlertNotification.with(post: @post).deliver_later(current_user)

class AlertNotification < Noticed::Base
  # AlertNotification.with(post: @post).deliver(current_user)
  # Add your delivery methods
  #
  # deliver_by :database
  # deliver_by :email, mailer: "UserMailer"
  # deliver_by :slack
  # deliver_by :custom, class: "MyDeliveryMethod"

  # Add required params
  #
  # param :post

  # Define helper methods to make rendering easier.
  #
  # def message
  #   t(".message")
  # end
  #
  # def url
  #   post_path(params[:post])
  # end
end
