# frozen_string_literal: true

class CitiesController < ApplicationController
  def show
    sql = 'Select * from cities'
    @records_array = ActiveRecord::Base.connection.exec_query(sql)
  end

  def query
    sql = params[:select]
    @records_array = ActiveRecord::Base.connection.exec_query(sql)
  end
end
