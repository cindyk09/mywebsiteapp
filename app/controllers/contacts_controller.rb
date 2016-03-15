class ContactsController < ApplicationController
  skip_before_action :authenticate

  def index
    @contact = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
     @contact = Contact.new(contact_params)
     if @contact.save
       name = params[:contact][:name]
       email = params[:contact][:email]
       message = params[:contact][:message]

       ContactMailer.new_mail(name, email, message).deliver_now

       flash[:success] = "Message sent."
       redirect_to new_contact_path
     else
       flash[:danger] = "Error occured, message has not been sent."
       redirect_to new_contact_path
     end
   end

  private
  def contact_params
  params.require(:contact).permit(:name, :email, :message)
  end
end
