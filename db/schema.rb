# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "chicago2008_crimes", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "p_key"
    t.string "case_number"
    t.timestamp "date"
    t.string "block"
    t.bigint "iucr"
    t.string "primary_type"
    t.string "description"
    t.string "location_description"
    t.boolean "arrest"
    t.boolean "domestic"
    t.bigint "beat"
    t.float "district", limit: 53
    t.float "ward", limit: 53
    t.float "community_area", limit: 53
    t.string "fbi_code"
    t.float "x_coordinate", limit: 53
    t.float "y_coordinate", limit: 53
    t.bigint "year"
    t.timestamp "updated_on"
    t.float "latitude", limit: 53
    t.float "longitude", limit: 53
    t.string "location"
  end

  create_table "chicago_crimes", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "p_key"
    t.string "case_number"
    t.timestamp "date"
    t.string "block"
    t.bigint "iucr"
    t.string "primary_type"
    t.string "description"
    t.string "location_description"
    t.boolean "arrest"
    t.boolean "domestic"
    t.bigint "beat"
    t.float "district", limit: 53
    t.float "ward", limit: 53
    t.float "community_area", limit: 53
    t.string "fbi_code"
    t.float "x_coordinate", limit: 53
    t.float "y_coordinate", limit: 53
    t.bigint "year"
    t.timestamp "updated_on"
    t.float "latitude", limit: 53
    t.float "longitude", limit: 53
    t.string "location"
  end

  create_table "crimes", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "dc_dist"
    t.bigint "psa"
    t.timestamp "dispatch_date_time"
    t.string "dispatch_date"
    t.string "dispatch_time"
    t.bigint "hour"
    t.bigint "dc_key"
    t.string "location_block"
    t.bigint "ucr_general"
    t.string "text_general_code"
    t.string "police_districts"
    t.string "month"
    t.string "lon"
    t.string "lat"
  end

  create_table "denver_crimes", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "inc_id_ent_id"
    t.bigint "offense_id"
    t.bigint "offensecode"
    t.boolean "offensecodeextension"
    t.string "offensetype_id"
    t.string "offensecategory_id"
    t.timestamp "firstoccurrencedate"
    t.timestamp "lastoccurrencedate"
    t.timestamp "reporteddate"
    t.string "inc_id_entaddress"
    t.bigint "geox"
    t.bigint "geoy"
    t.float "geolon", limit: 53
    t.float "geolat", limit: 53
    t.bigint "district_id"
    t.bigint "precinct_id"
    t.string "neighborhood_id"
    t.boolean "iscrime"
    t.boolean "istraffic"
  end

  create_table "la_crimes", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "dr_number"
    t.timestamp "date_reported"
    t.timestamp "date_occurred"
    t.string "time_occurred"
    t.bigint "area_id"
    t.string "area_name"
    t.bigint "reporting_district"
    t.string "crime_code"
    t.string "crime_code_description"
    t.string "mo_codes"
    t.float "victim_age", limit: 53
    t.string "victim_sex"
    t.string "victim_descent"
    t.float "premise_code", limit: 53
    t.string "premise_description"
    t.float "weapon_used_code", limit: 53
    t.string "weapon_description"
    t.string "status_code"
    t.string "status_description"
    t.float "crime_code1", limit: 53
    t.string "crime_code2"
    t.string "crime_code3"
    t.string "crime_code4"
    t.string "address"
    t.string "cross_street"
    t.string "location"
  end

  create_table "lat_crimes", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "dr_number"
    t.timestamp "date_reported"
    t.timestamp "date_occurred"
    t.string "time_occurred"
    t.bigint "area_id"
    t.string "area_name"
    t.bigint "reporting_district"
    t.string "crime_code"
    t.string "crime_code_description"
    t.string "mo_codes"
    t.float "victim_age", limit: 53
    t.string "victim_sex"
    t.string "victim_descent"
    t.float "premise_code", limit: 53
    t.string "premise_description"
    t.float "weapon_used_code", limit: 53
    t.string "weapon_description"
    t.string "status_code"
    t.string "status_description"
    t.float "crime_code1", limit: 53
    t.string "crime_code2"
    t.string "crime_code3"
    t.string "crime_code4"
    t.string "address"
    t.string "cross_street"
    t.float "lat", limit: 53
    t.float "lon", limit: 53
  end

  create_table "philly_crimes", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "dc_dist"
    t.bigint "psa"
    t.timestamp "dispatch_date_time"
    t.timestamp "dispatch_date"
    t.string "dispatch_time"
    t.bigint "hour"
    t.bigint "dc_key"
    t.string "location_block"
    t.bigint "ucr_general"
    t.string "text_general_code"
    t.string "police_districts"
    t.string "month"
    t.float "lon", limit: 53
    t.float "lat", limit: 53
  end

  create_table "world_cities", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "country"
    t.string "city"
    t.string "accent_city"
    t.string "region"
    t.string "population"
    t.float "latitude", limit: 53
    t.float "longitude", limit: 53
  end

end
