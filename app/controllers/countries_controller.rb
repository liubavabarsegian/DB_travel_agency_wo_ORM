class CountriesController < ApplicationController
  def show
    sql = "Select * from countries"
    @records_array =  ActiveRecord::Base.connection.exec_query(sql)
  end

  def query
      sql = params[:select]
      @records_array =  ActiveRecord::Base.connection.exec_query(sql)
  end

  def add_data
    # (0...100).each do 
    #     name = Faker::Address.country
    #     Country.create!({name: name})
    # end

    redirect_to countries_show_path
  end
end
