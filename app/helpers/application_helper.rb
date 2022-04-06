module ApplicationHelper
  def css_class_name
    "#{controller_path.parameterize}-#{action_name}"
  end
end
