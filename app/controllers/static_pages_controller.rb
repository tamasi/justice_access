class StaticPagesController < ApplicationController
  layout false, only: [:index]
  
  def index
    
  end

  def dashboard
    render file: "static_pages/dashboard.html.erb"
    # render file: "public/404.html", status: :not_found
  end
  
  private
  def valid_page?
    File.exist?(Pathname.new(Rails.root + "app/views/static_pages/#{params[:page]}.html.erb"))
  end
end
