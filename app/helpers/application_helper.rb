module ApplicationHelper
  def active_class(link_path)
    current_page?(link_path) ? "active" : ""
  end

  def current_link(link_path)
    current_page?(link_path) ? link_path : ""
  end
end
