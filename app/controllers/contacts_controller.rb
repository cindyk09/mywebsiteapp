class ContactsController < ApplicationController
  skip_before_action :authenticate

  def new
    @contact = Contact.new
  end

  def create
     @contact = Contact.new(contact_params)
     if @contact.save
       ContactMailer.new_mail(contact_params).deliver_now
       flash[:success] = "Message has been sent."
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
