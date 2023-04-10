class AircompaniesController < ApplicationController
  def show
    sql = "Select * from aircompanies"
    @records_array =  ActiveRecord::Base.connection.exec_query(sql)
  end

  def query
      sql = params[:select]
      @records_array =  ActiveRecord::Base.connection.exec_query(sql)
  end

  def add_data
    # (0...100).each do 
    #     name = Faker::Company.name
    #     Aircompany.create!({name: name})
    # end

    redirect_to aircompanies_show_path
  end
end
