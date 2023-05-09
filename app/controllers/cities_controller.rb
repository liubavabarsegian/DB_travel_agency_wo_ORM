# frozen_string_literal: true

class CitiesController < ApplicationController
  def show
    sql = 'Select id, name, (select name from countries where id = country_id) as country_id
    from cities'
    @records_array = ActiveRecord::Base.connection.exec_query(sql)
  end

  def query
    sql = params[:select]
    @records_array = ActiveRecord::Base.connection.exec_query(sql)
  end
end
