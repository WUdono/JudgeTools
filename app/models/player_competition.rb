class PlayerCompetition < ApplicationRecord
  belongs_to :player
  belongs_to :competition
  belongs_to :attendance
end
