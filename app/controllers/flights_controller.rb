class FlightsController < ApplicationController
  def show
    sql = "Select * from flights"
    @records_array =  ActiveRecord::Base.connection.exec_query(sql)
  end

  def query
      sql = params[:select]
      @records_array =  ActiveRecord::Base.connection.exec_query(sql)
  end

  def add_data
    # (0...100).each do
    #   price = Faker::Number.positive.round
    #   aircompany = Aircompany.ids.sample
    #   meal_included = [true, false].sample
    #   flight_duration = Faker::Number.between(from: 1, to: 20)
    #   departure_airport = Airport.ids.sample
    #   arrival_airport = Airport.where.not(id: departure_airport).ids.sample
    #   departure_time = DateTime.parse Faker::Time.forward(days: 7,   format: :long)
    #   Flight.create!({price: price, aircompany_id: aircompany, departure_time: departure_time, meal_included: meal_included, flight_duration: flight_duration, departure_airport_id: departure_airport, arrival_airport_id: arrival_airport })
    # end

    redirect_to flights_show_path
  end
end
