class Manager < ApplicationRecord
    belongs_to :department
    # has_one :manager_history
    has_many :manager_histories
    # has_many :departments, through: :manager_histories
end
