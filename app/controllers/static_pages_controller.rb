class StaticPagesController < ApplicationController
  def home
    if signed_in?.blank?
      redirect_to new_user_registration_path
    else
      redirect_to home_path
    end
  end

  def about
  end
end
