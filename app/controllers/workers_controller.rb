# frozen_string_literal: true

class WorkersController < ApplicationController
  def show
    sql = 'Select id, (select full_name from people
      where id = person_id) as person_id, salary, passport from workers'
    @records_array = ActiveRecord::Base.connection.exec_query(sql)
  end

  def query
    sql = params[:select]
    @records_array = ActiveRecord::Base.connection.exec_query(sql)
  end
end
