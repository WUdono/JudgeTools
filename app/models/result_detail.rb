class ResultDetail < ApplicationRecord
  belongs_to :result
  belongs_to :player
  belongs_to :judge
  belongs_to :table_role
end
