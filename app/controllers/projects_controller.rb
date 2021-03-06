class ProjectsController < ApplicationController
  before_action :set_project, only: [:edit, :show, :update, :destroy]
  before_action :authenticate, only: [:new, :edit, :create, :update]


  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    current_user.projects << @project
    if @project.save
      redirect_to @project
    else
      render :new
    end
  end

  def show

  end

  def edit
  end

  def update
    @project.update(project_params)
    redirect_to @project
  end

  def destroy
    @project.destroy
    respond_to do |format|
      format.html { user_path(current_user) }
      format.js { }
    end


  end

  private
  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :description, :github,
    :projecturl, :user_id, :tags, :image_upload, :software)
  end

end
