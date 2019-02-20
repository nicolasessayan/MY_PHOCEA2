class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @yachts = Yacht.all
    if user_signed_in?
      @othersyachts = Yacht.where.not(user_id: current_user.id)
    end
  end
end
