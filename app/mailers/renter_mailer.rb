class RenterMailer < ApplicationMailer
  default from: 'test@email.com'

  def rent_email
    mail(to: current_user.email, subject: 'Place Rented')
  end
end
