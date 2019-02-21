class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @yachts = Yacht.all
    if user_signed_in?
      @othersyachts = Yacht.all.select{ |obj| obj.user_id != current_user.id }
    end
    @ports = Port.where.not(latitude: nil, longitude: nil)
    @markers = @ports.map do |port|
      {
        lng: port.longitude,
        lat: port.latitude
      }
    end
  end
end
