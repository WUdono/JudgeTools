class Competition < ApplicationRecord
  belongs_to :term
  belongs_to :stage
  belongs_to :table_estimation
end
