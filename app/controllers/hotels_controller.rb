# frozen_string_literal: true

class HotelsController < ApplicationController
  def show
    sql = 'Select id, hotel_name, meal_type, 
    number_of_pools, has_pool_for_children, price_for_a_person, 
    number_of_stars, (select name from cities where id = city_id) as city_id,
    cleaning_included, hotel_address, phone, web_site, discount_percent_for_children,
    has_spa, has_own_beach, wifi_price_for_a_day, has_aquapark, coefficient_for_seasons, 
    number_of_bars, number_of_restaurants from hotels'
    @records_array = ActiveRecord::Base.connection.exec_query(sql)
  end

  def query
    sql = params[:select]
    @records_array = ActiveRecord::Base.connection.exec_query(sql)
  end
end
