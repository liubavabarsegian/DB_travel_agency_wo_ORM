class TouristsController < ApplicationController
  def show
    sql = 'Select id, (select full_name from people
    where id = person_id) as person_id, passport, foreign_passport, has_visa from tourists'
    @records_array = ActiveRecord::Base.connection.exec_query(sql)
  end

  def query
    sql = params[:select]
    @records_array = ActiveRecord::Base.connection.exec_query(sql)
  end
end
