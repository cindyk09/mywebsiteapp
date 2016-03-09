module ApplicationHelper

  CONTROLLERS = "home, about, contact"
  ACTIONS = "index"

  def show_plain_nav_bar
    CONTROLLERS.include?(controller.controller_name) && ACTIONS.include?(controller.action_name)
    # controller.controller_name.include?(CONTROLLERS) && controller.action_name.include?(ACTIONS)
  end
end
