class HotelsController < ApplicationController
  def show
    sql = "Select * from hotels"
    @records_array =  ActiveRecord::Base.connection.exec_query(sql)
  end

  def query
      sql = params[:select]
      @records_array =  ActiveRecord::Base.connection.exec_query(sql)
  end

  def add_data
    # (0...100).each do 
    #     name = Faker::Name.name_with_middle
    #     has_pool = [true, false].sample
    #     number_of_stars = [1, 2, 3, 4, 5].sample
    #     cleaning_included = [true, false].sample
    #     price = Faker::Number.positive.round * number_of_stars / 100
    #     city = City.ids.sample
    #     Hotel.create!({name: name, has_pool: has_pool, number_of_stars: number_of_stars, cleaning_included: cleaning_included, price_for_a_person: price, city_id: city})
    # end

    redirect_to hotels_show_path
  end
end
