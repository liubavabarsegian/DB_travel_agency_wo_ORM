class TripsController < ApplicationController
  def show
    sql = "Select * from trips"
    @records_array =  ActiveRecord::Base.connection.exec_query(sql)
  end

  def query
      sql = params[:select]
      @records_array =  ActiveRecord::Base.connection.exec_query(sql)
  end


  def add_data
    # (0...100).each do 
    #   departure_flight = Flight.where.not(departure_time: Flight.maximum('departure_time')).sample
    #   departure_date = departure_flight.departure_time
    #   arrival_flight = Flight.where(departure_time: departure_date...Flight.maximum('departure_time')).sample
    #   arrival_date = arrival_flight.departure_time
    #   hotel = Hotel.ids.sample
    #   meal = ["Room Only", "Bed and Breakfast", "Half Board", "Half Board plus", "Full Board", "Full Board plus", "All inclusive", "Ultra All Inclusive"].sample
    #   Trip.create!({departure_date: departure_date, arrival_date: arrival_date, departure_flight_id: departure_flight.id, arrival_flight_id: arrival_flight.id, meal: meal, hotel_id: hotel})
    # end

    redirect_to trips_show_path
  end
end
