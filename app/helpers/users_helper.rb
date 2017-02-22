module UsersHelper

  def current_user_projects
      @allprojects = current_user.projects
  end
end
