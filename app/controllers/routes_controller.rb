class RoutesController < ApplicationController
    
    def index
        @routes = Route.all.order('updated_at DESC').page(params[:page]).per(5)
        
    end
    
    def new
        @route = Route.new
    end
    
    def create
        Route.create(routes_params)
        redirect_to action: :index
    end
    
    def show
        @nickname = current_user.nickname
        # @user = User.params(:id)
        
    end

    private
    def routes_params
        params.require(:route).permit(:title, :place, :detail, :distance).merge(user_id: current_user.id)
    
    end
    
    
end
