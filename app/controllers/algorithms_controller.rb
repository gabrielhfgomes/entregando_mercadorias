class AlgorithmsController < ApplicationController

      #This function redirects to the view new
      def new

      end

      #This function call the dijkstra algorithm, make a new instance of Algorithm
      #calculate de smaller distance and the path to it.
      def create
            @algorithm = Algorithm.new(algorithm_params)
            @algorithm.save

            @algorithm.form_source
            @algorithm.form_target
            @algorithm.map_id

            require_relative '../../lib/dijkstra.rb'
            @routes = Route.where(map_id: @algorithm.map_id)

            @graph = Graph.new
            (1..6).each {|node| @graph.push node }

            @routes.each do |route|
                  @graph.connect_mutually route.source.to_i, route.target.to_i, route.distance.to_i
            end

            @graph
            @graph.length_between(@algorithm.form_source.to_i, @algorithm.form_target.to_i)
            @graph.neighbors(@algorithm.form_source.to_i)


            minimum_distance = @graph.dijkstra(@algorithm.form_source.to_i, @algorithm.form_target.to_i)[:distance]

            @algorithm.form_total = (minimum_distance/@algorithm.form_autonomy) * @algorithm.form_cost

      end

      private def algorithm_params
            params.require(:algorithm).permit(:map_id, :form_source, :form_target, :form_autonomy, :form_cost)
      end

end
