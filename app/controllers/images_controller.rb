class ImagesController < ApplicationController
    
    def new
        @route = Route.find(params[:route_id])
        @image = Image.new
        @image.route_id = @route.id
    end
    
    def create
        @image = Image.create(gazou_params)
        redirect_to :root

    end
    
    private
    def gazou_params
        params.require(:image).permit(:route_id, :filename, :comment).merge(user_id: current_user.id)
    end
    
end
