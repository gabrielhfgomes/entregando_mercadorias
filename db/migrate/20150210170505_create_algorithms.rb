class CreateAlgorithms < ActiveRecord::Migration
  def change
    create_table :algorithms do |t|
      t.integer :map_id
      t.integer :form_source
      t.integer :form_target
      t.float :form_autonomy
      t.float :form_cost
      t.float :form_total

      t.timestamps
    end
  end
end
