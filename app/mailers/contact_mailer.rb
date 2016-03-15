class ContactMailer < ApplicationMailer
  default to: 'cindyk09@gmail.com'

  def new_mail(contact_params)
    @name = contact_params[:name]
    @email = contact_params[:email]
    @message = contact_params[:message]

    mail(from: @email, subject: "Message From #{@name}")
  end


end
