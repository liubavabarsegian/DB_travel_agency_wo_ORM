class ClientsController < ApplicationController
    def show
        sql = "Select * from clients"
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
        #     has_member_card = [true, false].sample
        #     Client.create!({name: name, phone: phone, birthday_date: bday, has_member_card: has_member_card})
        # end

        redirect_to clients_show_path
    end
end
