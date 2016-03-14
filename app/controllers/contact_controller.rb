class ContactController < ApplicationController
  skip_before_action :authenticate

  def index

  end

  def create
    # Sends email to user when user is created.
    ContactMailer.contact_mailer.deliver_now
  end

end
