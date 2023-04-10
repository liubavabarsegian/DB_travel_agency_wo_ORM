class OrdersController < ApplicationController
  def show
    sql = "Select * from orders"
    @records_array =  ActiveRecord::Base.connection.exec_query(sql)
  end

  def query
      sql = params[:select]
      @records_array =  ActiveRecord::Base.connection.exec_query(sql)
  end


  def add_data
    # (0...50000).each do 
    #   client = Client.ids.sample
    #   worker = Worker.ids.sample
    #   trip = Trip.all.sample
    #   number = rand(1...10)
    #   price = number * (Flight.find(trip.departure_flight_id).price + Flight.find(trip.arrival_flight_id).price + Hotel.find(trip.hotel_id).price_for_a_person * (trip.arrival_date - trip.departure_date).to_i )
    #   order_time = Faker::Time.between_dates(from: "01.01.2020", to: trip.departure_date)
    #   Order.create!({client_id: client, worker_id: worker, trip_id: trip, number_of_people: number, total_price: price, order_time: order_time, trip_id: trip.id})
    # end

    redirect_to orders_show_path
  end
end
