class Route < ActiveRecord::Base
  attr_accessible :distance, :map_id, :source, :target
  belongs_to :map
end
