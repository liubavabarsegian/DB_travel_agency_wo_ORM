class WorkersController < ApplicationController
  def show
    sql = "Select * from workers"
    @records_array =  ActiveRecord::Base.connection.exec_query(sql)
  end

  def query
      sql = params[:select]
      @records_array =  ActiveRecord::Base.connection.exec_query(sql)
  end

  def add_data
    # (0...100).each do 
    #     name = Faker::Name.name_with_middle
    #     phone = Faker::PhoneNumber.phone_number_with_country_code
    #     bday = Faker::Date.birthday
    #     salary = Faker::Number.positive.round
    #     Worker.create!({name: name, phone: phone, birthday_date: bday, salary: salary})
    # end

    redirect_to workers_show_path
  end
end
