class ContactMailer < ActionMailer::Base
  default to: 'cindyk09@gmail.com'

  def new_mail(name, email, body)

    @name = name
    @email = email
    @body = body

    mail(from: email, subject: "Message From #{@name}")
  end


end
