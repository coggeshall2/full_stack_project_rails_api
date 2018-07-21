class CreateTrails < ActiveRecord::Migration[5.1]
  def change
    create_table :trails do |t|
      t.references :user, foreign_key: true
      t.string :trail_name
      t.string :location
      t.string :distance
      t.string :elevation_gain
      t.string :trail_type
      t.string :skill_level

      t.timestamps
    end
  end
end
