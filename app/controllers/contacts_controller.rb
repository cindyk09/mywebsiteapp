class ContactsController < ApplicationController
  skip_before_action :authenticate

  def new
    @contact = Contact.new
  end

  def create
     @contact = Contact.new(contact_params)

     if @contact.save
       ContactMailer.new_mail(contact_params).deliver_now
       respond_to do |format|
        format.html {redirect_to new_contact_path }
        format.js { }
       end
     else
       respond_to do |format|
        format.html {redirect_to new_contact_path }
        format.js { render 'contacts/error.js.erb'}
     end
     end
   end

  private
  def contact_params
  params.require(:contact).permit(:name, :email, :message)
  end
end
