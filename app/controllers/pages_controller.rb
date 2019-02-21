class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if params[:query_name].present? && params[:query_price].present? && params[:query_guests].present? && params[:query_port].present?
      @yachts = Yacht.joins(:port).where("name @@ ?", "%#{params[:query_name]}%")
                     .where("yachts.price <= ?", params[:query_price])
                     .where("yachts.passengers_capacity >= ?", params[:query_guests])
                     .where("ports.address @@ ?", "%#{params[:query_port]}%")
                     .where("yachts.user_id != ?", current_user.id)
    elsif params[:query_name].present? && params[:query_price].present? && params[:query_guests].blank? && params[:query_port].present?
      @yachts = Yacht.joins(:port).where("yachts.name @@ ?", "%#{params[:query_name]}%")
                     .where("yachts.price <= ?", params[:query_price])
                     .where("ports.address @@ ?", "%#{params[:query_port]}%")
                     .where("yachts.user_id != ?", current_user.id)
    elsif params[:query_name].present? && params[:query_price].blank? && params[:query_guests].present? && params[:query_port].present?
      @yachts = Yacht.joins(:port).where("yachts.name @@ ?", "%#{params[:query_name]}%")
                     .where("yachts.passengers_capacity >= ?", params[:query_guests])
                     .where("ports.address @@ ?", "%#{params[:query_port]}%")
                     .where("yachts.user_id != ?", current_user.id)
    elsif params[:query_name].blank? && params[:query_price].present? && params[:query_guests].present? && params[:query_port].present?
      @yachts = Yacht.joins(:port).where("yachts.price <= ?", params[:query_price])
                     .where("yachts.passengers_capacity >= ?", params[:query_guests])
                     .where("ports.address @@ ?", "%#{params[:query_port]}%")
                     .where("yachts.user_id != ?", current_user.id)
    elsif params[:query_name].blank? && params[:query_price].blank? && params[:query_guests].present? && params[:query_port].present?
      @yachts = Yacht.joins(:port).where("yachts.passengers_capacity >= ?", params[:query_guests])
                     .where("ports.address @@ ?", "%#{params[:query_port]}%")
                     .where("yachts.user_id != ?", current_user.id)
    elsif params[:query_name].present? && params[:query_price].blank? && params[:query_guests].blank? && params[:query_port].present?
      @yachts = Yacht.joins(:port).where("yachts.name @@ ?", "%#{params[:query_name]}%")
                     .where("ports.address @@ ?", "%#{params[:query_port]}%")
                     .where("yachts.user_id != ?", current_user.id)
    elsif params[:query_name].blank? && params[:query_price].present? && params[:query_guests].blank? && params[:query_port].present?
      @yachts = Yacht.joins(:port).where("yachts.price <= ?", params[:query_price])
                     .where("ports.address @@ ?", "%#{params[:query_port]}%")
                     .where("yachts.user_id != ?", current_user.id)
    elsif params[:query_name].blank? && params[:query_price].blank? && params[:query_guests].blank? && params[:query_port].present?
      @yachts = Yacht.joins(:port).where("ports.address @@ ?", "%#{params[:query_port]}%")
                                  .where("yachts.user_id != ?", current_user.id)

    elsif params[:query_name].present? && params[:query_price].present? && params[:query_guests].present? && params[:query_port].blank?
      @yachts = Yacht.joins(:port).where("yachts.name @@ ?", "%#{params[:query_name]}%")
                     .where("yachts.price <= ?", params[:query_price])
                     .where("yachts.passengers_capacity >= ?", params[:query_guests])
                     .where("yachts.user_id != ?", current_user.id)
    elsif params[:query_name].present? && params[:query_price].present? && params[:query_guests].blank? && params[:query_port].blank?
      @yachts = Yacht.joins(:port).where("yachts.name @@ ?", "%#{params[:query_name]}%")
                     .where("yachts.price <= ?", params[:query_price])
                     .where("yachts.user_id != ?", current_user.id)
    elsif params[:query_name].present? && params[:query_price].blank? && params[:query_guests].present? && params[:query_port].blank?
      @yachts = Yacht.joins(:port).where("yachts.name @@ ?", "%#{params[:query_name]}%")
                     .where("yachts.passengers_capacity >= ?", params[:query_guests])
                     .where("yachts.user_id != ?", current_user.id)
    elsif params[:query_name].blank? && params[:query_price].present? && params[:query_guests].present? && params[:query_port].blank?
      @yachts = Yacht.joins(:port).where("yachts.price <= ?", params[:query_price])
                     .where("yachts.passengers_capacity >= ?", params[:query_guests])
                     .where("yachts.user_id != ?", current_user.id)
    elsif params[:query_name].blank? && params[:query_price].blank? && params[:query_guests].present? && params[:query_port].blank?
      @yachts = Yacht.joins(:port).where("yachts.passengers_capacity >= ?", params[:query_guests])
                                  .where("yachts.user_id != ?", current_user.id)
    elsif params[:query_name].present? && params[:query_price].blank? && params[:query_guests].blank? && params[:query_port].blank?
      @yachts = Yacht.joins(:port).where("yachts.name @@ ?", "%#{params[:query_name]}%")
                                  .where("yachts.user_id != ?", current_user.id)
    elsif params[:query_name].blank? && params[:query_price].present? && params[:query_guests].blank? && params[:query_port].blank?
      @yachts = Yacht.joins(:port).where("yachts.price <= ?", params[:query_price])
                                  .where("yachts.user_id != ?", current_user.id)
    else
      @yachts = Yacht.all
    end
  end

  @ports = Port.all
end
