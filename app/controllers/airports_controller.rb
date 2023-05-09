# frozen_string_literal: true

class AirportsController < ApplicationController
  def show
    sql = 'Select id, name, (select name from cities where city_id = id) as city_id from airports'
    @records_array = ActiveRecord::Base.connection.exec_query(sql)
  end

  def query
    sql = params[:select]
    @records_array = ActiveRecord::Base.connection.exec_query(sql)
  end
end
