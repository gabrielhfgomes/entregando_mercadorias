class RoutesController < ApplicationController

      #This function show all routes
      def index
            mapID = params[:id]
            @map = Map.find(mapID)

            @routes = Route.where(map_id: mapID)
      end

      #This function create new route and save it on the database
      def create
             @route = Route.new(route_params)
             @route.save

             redirect_to '/routes/map/'+@route.map_id.to_s
      end

      #This function redirect to the view 'new'
      def new

      end

      #This function implements strong parameters
      private
      def route_params
            params.require(:route).permit(:map_id, :source, :target, :distance)
      end
end
