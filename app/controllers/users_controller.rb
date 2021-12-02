class UsersController < ApplicationController
    
    def index
        @users = User.all
        puts"************ @usuarios **************"
        puts @users.to_json
        puts"**************************"
    end

end