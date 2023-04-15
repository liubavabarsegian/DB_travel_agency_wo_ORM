# frozen_string_literal: true

class AircompaniesController < ApplicationController
  def show
    sql = 'Select * from aircompanies'
    @records_array = ActiveRecord::Base.connection.exec_query(sql)
  end

  def query
    sql = params[:select]
    @records_array = ActiveRecord::Base.connection.exec_query(sql)
  end
end
