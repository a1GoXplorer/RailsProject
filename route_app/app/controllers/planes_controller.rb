class PlanesController < ApplicationController

    def index
    	#defines the method 'index'
        # Note it used to say 
        #   render text: 'Hello, pilots'
        @planes = Plane.all
        render :index
    end

    def new
    	render :new
    end

    def create
        plane = params.require(:plane).permit(:name, :design, :description)
        plane = Plane.create(plane)
        redirect_to "/planes/#{plane.id}"
    end

    def show
    	plane_id = params[:id]
    	@plane = Plane.find_by_id(plane_id)
    	render :show
    end

    def edit
        plane_id = params[:id]
        @plane = Plane.find(plane_id)
        render :edit
    end

    def update
        plane_id = params[:id]
        plane = Plane.find(plane_id)

        # get updated data
        updated_attributes = params.require(:plane).permit(:name, :design, :description)
        # update the plane
        plane.update_attributes(updated_attributes)

        #redirect to show
        redirect_to "/posts/#{plane_id}"
    end

end