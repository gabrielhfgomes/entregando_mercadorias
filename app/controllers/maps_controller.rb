class MapsController < ApplicationController

      #This function show all maps
      def index
            @map = Map.all
      end

      #This function shows the created map
      def show
            @map = Map.find(params[:id])
      end

      #This function create a new map and save in the database
      def create
          @map = Map.create(map_params)
          @map.save

          redirect_to @map
      end

      #This function redirect to the view 'new'
      def new

      end

      #This function implements strong parameters
      private
      def map_params
            params.require(:map).permit(:name)
      end
end
