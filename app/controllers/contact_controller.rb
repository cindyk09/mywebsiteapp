class ContactController < ApplicationController
  skip_before_action :authenticate
  def index
  end
end
