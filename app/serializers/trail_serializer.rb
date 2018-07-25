class TrailSerializer < ActiveModel::Serializer
  attributes :id, :trail_name, :location, :distance, :elevation_gain, :trail_type, :skill_level
  has_one :user
  
end
