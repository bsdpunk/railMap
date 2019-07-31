json.extract! chicago_crime, :id, :p_key, :case_number, :date, :block, :iucr, :primary_type, :description, :location_description, :arrest, :domestic, :beat, :district, :ward, :community_area, :fbi_code, :x_coordinate, :y_coordinate, :year, :updated_on, :latitude, :longitude, :location, :created_at, :updated_at
json.url chicago_crime_url(chicago_crime, format: :json)
