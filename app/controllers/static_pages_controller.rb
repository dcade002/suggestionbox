class StaticPagesController < ApplicationController
  def home
    @user = User.new
  end

  def about
  end
end
