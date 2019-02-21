class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if params[:query_name].present? && params[:query_price].present? && params[:query_guests].present?
      @yachts = Yacht.where("name @@ ?", "%#{params[:query_name]}%")
                     .where("price <= ?", params[:query_price])
                     .where("passengers_capacity >= ?", params[:query_guests])
    elsif params[:query_name].present? && params[:query_price].present? && params[:query_guests].blank?
      @yachts = Yacht.where("name @@ ?", "%#{params[:query_name]}%")
                     .where("price <= ?", params[:query_price])
    elsif params[:query_name].present? && params[:query_price].blank? && params[:query_guests].present?
      @yachts = Yacht.where("name @@ ?", "%#{params[:query_name]}%")
                     .where(" passengers_capacity >= ?", params[:query_guests])
    elsif params[:query_name].blank? && params[:query_price].present? && params[:query_guests].present?
      @yachts = Yacht.where("price <= ?", params[:query_price])
                     .where(" passengers_capacity >= ?", params[:query_guests])
    elsif params[:query_name].blank? && params[:query_price].blank? && params[:query_guests].present?
      @yachts = Yacht.where(" passengers_capacity >= ?", params[:query_guests])
    elsif params[:query_name].present? && params[:query_price].blank? && params[:query_guests].blank?
      @yachts = Yacht.where("name @@ ?", "%#{params[:query_name]}%")
    elsif params[:query_name].blank? && params[:query_price].present? && params[:query_guests].blank?
      @yachts = Yacht.where("price <= ?", params[:query_price])
    else
      @yachts = Yacht.all
    end
  end
end
