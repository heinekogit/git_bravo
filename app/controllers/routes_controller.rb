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
        # @nickname = current_user.nickname
        @route = Route.find(params[:id])
        @images = Image.where(route_id: @route.id)
        # @routes = Route.where(user_id: current_user.id)
    end
    
    def edit
        @route = Route.find(params[:id])
    end
    
    def update
        route = Route.find(params[:id])
        route.update(routes_params)
        redirect_to action: :index
    end
    
    def destroy
        route = Route.find(params[:id])
        route.destroy
        redirect_to action: :index, notice: "通知メッセージ"
    end
    
    def search
        # @search_result = Route.where('title LIKE(?)', "%#{params[:keyword]}%").order('updated_at DESC').limit(20)
        @search_result = Route.search(params[:search])

    end


    private
    def routes_params
        params.require(:route).permit(:title, :place, :detail, :distance).merge(user_id: current_user.id)
        # params.require(:route).permit(:title, :place, :detail, :distance).merge(user_id: current_user.id, id: route_id)
    
    end
    
    
end
