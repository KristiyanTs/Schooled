class Remark < ApplicationRecord
  belongs_to :student
  belongs_to :school_year
end
