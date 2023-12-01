class Department < ApplicationRecord
    has_many :managers
    has_many :manager_histories, through: :managers
end
