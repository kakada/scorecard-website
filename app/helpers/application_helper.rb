module ApplicationHelper
  def css_class_name
    "#{controller_path.parameterize}-#{action_name}"
  end

  def human_size(num, units={ thousand: 'K', million: 'M' }, format: '%n%u')
    number_to_human num, units: units, format: format
  end
end
