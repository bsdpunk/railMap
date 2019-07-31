json.extract! philly_crime, :id, :dc_dist, :psa, :dispatch_date_time, :dispatch_date, :dispatch_time, :hour, :dc_key, :location_block, :ucr_general, :text_general_code, :police_districts, :month, :lon, :lat, :created_at, :updated_at
json.url philly_crime_url(philly_crime, format: :json)
