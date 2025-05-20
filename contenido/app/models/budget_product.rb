class BudgetProduct < ApplicationRecord
  belongs_to :budget
  belongs_to :product
end
