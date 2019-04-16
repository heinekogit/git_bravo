class AddRouteIdToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :route_id, :integer
  end
end
