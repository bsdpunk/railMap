json.extract! denver_crime, :id, :inc_id_ent_id, :offense_id, :offensecode, :offensecodeextension, :offensetype_id, :offensecategory_id, :firstoccurrencedate, :lastoccurrencedate, :reporteddate, :inc_id_entaddress, :geox, :geoy, :geolon, :geolat, :district_id, :precinct_id, :neighborhood_id, :iscrime, :istraffic, :created_at, :updated_at
json.url denver_crime_url(denver_crime, format: :json)
