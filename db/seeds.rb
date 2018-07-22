# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Trail.create(trail_name: 'My trail', location: 'My town', distance: '3.1 miles', elevation_gain: '245 ft', trail_type: 'Loop', skill_level: 'Easy' )
