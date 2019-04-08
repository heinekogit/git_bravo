class CreateRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :routes do |t|
      t.text :title
      t.text :place
      t.text :detail
      t.integer :distance

      t.timestamps
    end
  end
end
