class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if params[:query_name].present? && params[:query_price].present? && params[:query_guests].present? && params[:query_port].present? && current_user.nil? != true
      @yachts = Yacht.joins(:port).where("name @@ ?", "%#{params[:query_name]}%")
                     .where("yachts.price <= ?", params[:query_price])
                     .where("yachts.passengers_capacity >= ?", params[:query_guests])
                     .where("ports.address @@ ?", "%#{params[:query_port]}%")
                     .where("yachts.user_id != ?", current_user.id).order('yachts.passengers_capacity ASC')
    elsif params[:query_name].present? && params[:query_price].present? && params[:query_guests].blank? && params[:query_port].present? && current_user.nil? != true
      @yachts = Yacht.joins(:port).where("yachts.name @@ ?", "%#{params[:query_name]}%")
                     .where("yachts.price <= ?", params[:query_price])
                     .where("ports.address @@ ?", "%#{params[:query_port]}%")
                     .where("yachts.user_id != ?", current_user.id).order('yachts.price ASC')
    elsif params[:query_name].present? && params[:query_price].blank? && params[:query_guests].present? && params[:query_port].present? && current_user.nil? != true
      @yachts = Yacht.joins(:port).where("yachts.name @@ ?", "%#{params[:query_name]}%")
                     .where("yachts.passengers_capacity >= ?", params[:query_guests])
                     .where("ports.address @@ ?", "%#{params[:query_port]}%")
                     .where("yachts.user_id != ?", current_user.id).order('yachts.passengers_capacity ASC')
    elsif params[:query_name].blank? && params[:query_price].present? && params[:query_guests].present? && params[:query_port].present? && current_user.nil? != true
      @yachts = Yacht.joins(:port).where("yachts.price <= ?", params[:query_price])
                     .where("yachts.passengers_capacity >= ?", params[:query_guests])
                     .where("ports.address @@ ?", "%#{params[:query_port]}%")
                     .where("yachts.user_id != ?", current_user.id).order('yachts.passengers_capacity ASC')
    elsif params[:query_name].blank? && params[:query_price].blank? && params[:query_guests].present? && params[:query_port].present? && current_user.nil? != true
      @yachts = Yacht.joins(:port).where("yachts.passengers_capacity >= ?", params[:query_guests])
                     .where("ports.address @@ ?", "%#{params[:query_port]}%")
                     .where("yachts.user_id != ?", current_user.id).order('yachts.passengers_capacity ASC')
    elsif params[:query_name].present? && params[:query_price].blank? && params[:query_guests].blank? && params[:query_port].present? && current_user.nil? != true
      @yachts = Yacht.joins(:port).where("yachts.name @@ ?", "%#{params[:query_name]}%")
                     .where("ports.address @@ ?", "%#{params[:query_port]}%")
                     .where("yachts.user_id != ?", current_user.id)
    elsif params[:query_name].blank? && params[:query_price].present? && params[:query_guests].blank? && params[:query_port].present? && current_user.nil? != true
      @yachts = Yacht.joins(:port).where("yachts.price <= ?", params[:query_price])
                     .where("ports.address @@ ?", "%#{params[:query_port]}%")
                     .where("yachts.user_id != ?", current_user.id).order('yachts.price ASC')
    elsif params[:query_name].blank? && params[:query_price].blank? && params[:query_guests].blank? && params[:query_port].present? && current_user.nil? != true
      @yachts = Yacht.joins(:port).where("ports.address @@ ?", "%#{params[:query_port]}%")
                                  .where("yachts.user_id != ?", current_user.id).order('yachts.price ASC')
    elsif params[:query_name].present? && params[:query_price].present? && params[:query_guests].present? && params[:query_port].blank? && current_user.nil? != true
      @yachts = Yacht.joins(:port).where("yachts.name @@ ?", "%#{params[:query_name]}%")
                     .where("yachts.price <= ?", params[:query_price])
                     .where("yachts.passengers_capacity >= ?", params[:query_guests])
                     .where("yachts.user_id != ?", current_user.id).order('yachts.passengers_capacity ASC')
    elsif params[:query_name].present? && params[:query_price].present? && params[:query_guests].blank? && params[:query_port].blank? && current_user.nil? != true
      @yachts = Yacht.joins(:port).where("yachts.name @@ ?", "%#{params[:query_name]}%")
                     .where("yachts.price <= ?", params[:query_price])
                     .where("yachts.user_id != ?", current_user.id).order('yachts.price ASC')
    elsif params[:query_name].present? && params[:query_price].blank? && params[:query_guests].present? && params[:query_port].blank? && current_user.nil? != true
      @yachts = Yacht.joins(:port).where("yachts.name @@ ?", "%#{params[:query_name]}%")
                     .where("yachts.passengers_capacity >= ?", params[:query_guests])
                     .where("yachts.user_id != ?", current_user.id).order('yachts.passengers_capacity ASC')
    elsif params[:query_name].blank? && params[:query_price].present? && params[:query_guests].present? && params[:query_port].blank? && current_user.nil? != true
      @yachts = Yacht.joins(:port).where("yachts.price <= ?", params[:query_price])
                     .where("yachts.passengers_capacity >= ?", params[:query_guests])
                     .where("yachts.user_id != ?", current_user.id).order('yachts.passengers_capacity ASC')
    elsif params[:query_name].blank? && params[:query_price].blank? && params[:query_guests].present? && params[:query_port].blank? && current_user.nil? != true
      @yachts = Yacht.joins(:port).where("yachts.passengers_capacity >= ?", params[:query_guests])
                                  .where("yachts.user_id != ?", current_user.id).order('yachts.passengers_capacity ASC')
    elsif params[:query_name].present? && params[:query_price].blank? && params[:query_guests].blank? && params[:query_port].blank? && current_user.nil? != true
      @yachts = Yacht.joins(:port).where("yachts.name @@ ?", "%#{params[:query_name]}%")
                                  .where("yachts.user_id != ?", current_user.id).order('yachts.price ASC')
    elsif params[:query_name].blank? && params[:query_price].present? && params[:query_guests].blank? && params[:query_port].blank? && current_user.nil? != true
      @yachts = Yacht.joins(:port).where("yachts.price <= ?", params[:query_price])
                                  .where("yachts.user_id != ?", current_user.id).order('yachts.price ASC')


    elsif params[:query_name].present? && params[:query_price].present? && params[:query_guests].present? && params[:query_port].present? && current_user.nil? == true
      @yachts = Yacht.joins(:port).where("name @@ ?", "%#{params[:query_name]}%")
                     .where("yachts.price <= ?", params[:query_price])
                     .where("yachts.passengers_capacity >= ?", params[:query_guests])
                     .where("ports.address @@ ?", "%#{params[:query_port]}%")
    elsif params[:query_name].present? && params[:query_price].present? && params[:query_guests].blank? && params[:query_port].present? && current_user.nil? == true
      @yachts = Yacht.joins(:port).where("yachts.name @@ ?", "%#{params[:query_name]}%")
                     .where("yachts.price <= ?", params[:query_price])
                     .where("ports.address @@ ?", "%#{params[:query_port]}%")
    elsif params[:query_name].present? && params[:query_price].blank? && params[:query_guests].present? && params[:query_port].present? && current_user.nil? == true
      @yachts = Yacht.joins(:port).where("yachts.name @@ ?", "%#{params[:query_name]}%")
                     .where("yachts.passengers_capacity >= ?", params[:query_guests])
                     .where("ports.address @@ ?", "%#{params[:query_port]}%")
    elsif params[:query_name].blank? && params[:query_price].present? && params[:query_guests].present? && params[:query_port].present? && current_user.nil? == true
      @yachts = Yacht.joins(:port).where("yachts.price <= ?", params[:query_price])
                     .where("yachts.passengers_capacity >= ?", params[:query_guests])
                     .where("ports.address @@ ?", "%#{params[:query_port]}%")
    elsif params[:query_name].blank? && params[:query_price].blank? && params[:query_guests].present? && params[:query_port].present? && current_user.nil? == true
      @yachts = Yacht.joins(:port).where("yachts.passengers_capacity >= ?", params[:query_guests])
                     .where("ports.address @@ ?", "%#{params[:query_port]}%")
    elsif params[:query_name].present? && params[:query_price].blank? && params[:query_guests].blank? && params[:query_port].present? && current_user.nil? == true
      @yachts = Yacht.joins(:port).where("yachts.name @@ ?", "%#{params[:query_name]}%")
                     .where("ports.address @@ ?", "%#{params[:query_port]}%")
    elsif params[:query_name].blank? && params[:query_price].present? && params[:query_guests].blank? && params[:query_port].present? && current_user.nil? == true
      @yachts = Yacht.joins(:port).where("yachts.price <= ?", params[:query_price])
                     .where("ports.address @@ ?", "%#{params[:query_port]}%")
    elsif params[:query_name].blank? && params[:query_price].blank? && params[:query_guests].blank? && params[:query_port].present? && current_user.nil? == true
      @yachts = Yacht.joins(:port).where("ports.address @@ ?", "%#{params[:query_port]}%")
    elsif params[:query_name].present? && params[:query_price].present? && params[:query_guests].present? && params[:query_port].blank? && current_user.nil? == true
      @yachts = Yacht.joins(:port).where("yachts.name @@ ?", "%#{params[:query_name]}%")
                     .where("yachts.price <= ?", params[:query_price])
                     .where("yachts.passengers_capacity >= ?", params[:query_guests])
    elsif params[:query_name].present? && params[:query_price].present? && params[:query_guests].blank? && params[:query_port].blank? && current_user.nil? == true
      @yachts = Yacht.joins(:port).where("yachts.name @@ ?", "%#{params[:query_name]}%")
                     .where("yachts.price <= ?", params[:query_price])
    elsif params[:query_name].present? && params[:query_price].blank? && params[:query_guests].present? && params[:query_port].blank? && current_user.nil? == true
      @yachts = Yacht.joins(:port).where("yachts.name @@ ?", "%#{params[:query_name]}%")
                     .where("yachts.passengers_capacity >= ?", params[:query_guests])
    elsif params[:query_name].blank? && params[:query_price].present? && params[:query_guests].present? && params[:query_port].blank? && current_user.nil? == true
      @yachts = Yacht.joins(:port).where("yachts.price <= ?", params[:query_price])
                     .where("yachts.passengers_capacity >= ?", params[:query_guests])
    elsif params[:query_name].blank? && params[:query_price].blank? && params[:query_guests].present? && params[:query_port].blank? && current_user.nil? == true
      @yachts = Yacht.joins(:port).where("yachts.passengers_capacity >= ?", params[:query_guests])

    elsif params[:query_name].present? && params[:query_price].blank? && params[:query_guests].blank? && params[:query_port].blank? && current_user.nil? == true
      @yachts = Yacht.joins(:port).where("yachts.name @@ ?", "%#{params[:query_name]}%")

    elsif params[:query_name].blank? && params[:query_price].present? && params[:query_guests].blank? && params[:query_port].blank? && current_user.nil? == true
      @yachts = Yacht.joins(:port).where("yachts.price <= ?", params[:query_price])

    else
      @yachts = Yacht.all
    end
    @ports = Port.where.not(latitude: nil, longitude: nil)
    @markers = @ports.map do |port|
      {
        lng: port.longitude,
        lat: port.latitude
      }
    end
  end

  @ports = Port.all
end
