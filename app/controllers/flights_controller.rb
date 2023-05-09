# frozen_string_literal: true

class FlightsController < ApplicationController
  def show
    sql = 'Select id, departure_time, 
    (select aircompany_name from aircompanies where id = aircompany_id ) as aircompany_id, 
    (select name from airports where id = departure_airport_id) as departure_airport_id,
    (select name from airports where id = arrival_airport_id) as arrival_airport_id,
    (select name from countries where id = country_from ) as country_from,
    (select name from countries where id = country_where_to) as country_where_to,
    price, flight_number, flight_duration
    from flights'
    @records_array = ActiveRecord::Base.connection.exec_query(sql)
  end

  def query
    sql = params[:select]
    @records_array = ActiveRecord::Base.connection.exec_query(sql)
  end
end
