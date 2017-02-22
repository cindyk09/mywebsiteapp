class HomeController < ApplicationController
  skip_before_action :authenticate

  def index
    @projects = Project.all
  end
end
