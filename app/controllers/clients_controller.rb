# frozen_string_literal: true

class ClientsController < ApplicationController
  def show
    sql = 'Select * from clients'
    @records_array = ActiveRecord::Base.connection.exec_query(sql)
  end

  def query
    sql = params[:select]
    @records_array = ActiveRecord::Base.connection.exec_query(sql)
  end
end
