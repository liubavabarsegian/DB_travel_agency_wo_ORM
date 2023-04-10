class CitiesController < ApplicationController
  def show
    sql = "Select * from cities"
    @records_array =  ActiveRecord::Base.connection.exec_query(sql)
  end

  def query
      sql = params[:select]
      @records_array =  ActiveRecord::Base.connection.exec_query(sql)
  end

  def add_data
  #   (0...100).each do 
  #       name = Faker::Address.city
  #       country = Country.ids.sample
  #       City.create!({name: name, country_id: country})
  #   end

    redirect_to cities_show_path
  end
end
