class JudgeCompetition < ApplicationRecord
  belongs_to :judge
  belongs_to :competition
  belongs_to :attendance
end
