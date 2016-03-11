module ApplicationHelper

  CONTROLLERS = "home, about, contact"
  ACTIONS = "index"

  def show_plain_nav_bar
    CONTROLLERS.include?(controller.controller_name) && ACTIONS.include?(controller.action_name)
  end

  # def project_id
  #   projects = Project.all
  #   projects.each do |project|
  #       project.id
  #   end
  # end
end
