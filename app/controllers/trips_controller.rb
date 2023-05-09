# frozen_string_literal: true

class TripsController < ApplicationController
  def show
    sql = 'Select id, departure_date, arrival_date, meal_for_flight,
            (select hotel_name from hotels where hotels.id = hotel_id) as hotel_id,
            (select flight_number from flights where id = departure_flight_id) as departure_flight_id,
            (select flight_number from flights where id = arrival_flight_id) as arrival_flight_id,
            has_luggage, 
            (select full_name from people where id = 
                (select person_id from clients where id = client_id)) as client_id,
            (select full_name from people where id = 
              (select person_id from workers where id = worker_id)) as worker_id,
            (select full_name from people where id = 
              (select person_id from tourists where id = tourist_id)) as tourist_id,
            number_of_nights, 
            (select insurance_type from insurances where id = insurance_id) as insurance_id,
            trip_price,
            (select name from countries where id = country_id) as country_id
                from trips'
    @records_array = ActiveRecord::Base.connection.exec_query(sql)
  end

  def query
    sql = params[:select]
    @records_array = ActiveRecord::Base.connection.exec_query(sql)
  end
end
