module ApplicationHelper
  def active_class(link_path)
    current_page?(link_path) ? "active" : ""
  end

  # To be Developed ----> Necesito hacer un método para poner la clase "active" para cada resource de un controlller
  def active_class_for_resources(control)
    puts("####### controller name: #{control}")
    current_page?(controller: control) ? "active" : ""
  end

  def current_link(link_path)
    current_page?(link_path) ? link_path : ""
  end
end
