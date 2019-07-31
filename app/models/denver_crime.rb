class DenverCrime < ApplicationRecord
  belongs_to :inc_id_ent
  belongs_to :offense
  belongs_to :offensetype
  belongs_to :offensecategory
  belongs_to :district
  belongs_to :precinct
  belongs_to :neighborhood
end
