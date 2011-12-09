class HomeController < ApplicationController
  def index
  redirect_to  :controller=>"admin/dashboard",:action=>"index"
  end

end
