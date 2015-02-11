class Algorithm < ActiveRecord::Base
      attr_accessible :form_autonomy, :form_cost, :form_source, :form_target, :form_total, :map_id
      validates_presence_of :map_id, :form_source, :form_target, :form_autonomy, :form_cost
end
