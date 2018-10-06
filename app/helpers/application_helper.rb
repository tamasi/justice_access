module ApplicationHelper
  def active_class(link_path)
    current_page?(link_path) ? "active" : ""
  end

  def active_class_for_resources(control)
    current_page?(controller: control) ? "active" : ""
  end

  def current_link(link_path)
    current_page?(link_path) ? link_path : ""
  end
end
