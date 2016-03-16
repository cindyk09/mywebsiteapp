module ApplicationHelper

  CONTROLLERS = "home, about, contacts"
  ACTIONS = "index, new"

  def show_plain_nav_bar
    CONTROLLERS.include?(controller.controller_name) && ACTIONS.include?(controller.action_name)
  end
end
