class UsersController < ApplicationController
    

    def show
        @nickname = current_user.nickname
        @routes = Route.where(user_id: current_user.id)
        
    end
    
end
