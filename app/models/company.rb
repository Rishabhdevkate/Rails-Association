class Company < ApplicationRecord
    has_many :workers
    validates :company_name, presence: true
    before_save :check_data
    private
    def check_data
        puts "---------It runs before saving the data=---------"
    end
end
