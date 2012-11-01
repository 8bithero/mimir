class HomeController < ApplicationController
  def index
    @users = User.all
  end

  def reports
    @users = User.all
  end
end
