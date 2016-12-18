class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:about]

  def home
  end

  def about
    # flash[:notice] = "Welcome Back. My Lovely Candy."
  end
end
