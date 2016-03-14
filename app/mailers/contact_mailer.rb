class ContactMailer < ApplicationMailer
  default from: "cindyk09website@gmail.com"

  def contact_mailer
    mail(to: 'cindyk09@gmail.com', subject: 'Hi! - from website')
  end
end
