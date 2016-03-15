class ContactMailer < ApplicationMailer
  default to: 'cindyk09@gmail.com'

  def new_mail(name, email, message)

    @name = name
    @email = email
    @message = message

    mail(from: email, subject: "Message From #{@name}")
  end


end
