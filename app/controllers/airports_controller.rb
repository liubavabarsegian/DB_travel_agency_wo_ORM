class AirportsController < ApplicationController
  def show
    sql = "Select * from airports"
    @records_array =  ActiveRecord::Base.connection.exec_query(sql)
  end

  def query
      sql = params[:select]
      @records_array =  ActiveRecord::Base.connection.exec_query(sql)
  end

  def add_data
    # (0...100).each do 
    #     name = Faker::Travel::Airport.name(size: "large", region: "united_states")
    #     city = City.ids.sample
    #     Airport.create!({name: name, city_id: city})
    # end

    redirect_to airports_show_path
  end
end
