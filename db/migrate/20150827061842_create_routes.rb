class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :name
      t.text :description
      t.datetime :createDate
      t.string :driveDate
      t.integer :indexId
      t.string :region
      t.integer :regionId
      t.integer :routeDistance
      t.string :routeTime
      t.string :uploader
      t.string :recorder
      t.string :keyword
      t.string :pathCameraLeft
      t.string :pathCameraMiddle
      t.string :pathCameraRight
      t.string :pathGPS

      t.timestamps null: false
    end
  end
end
