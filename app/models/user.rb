class User < ApplicationRecord
    validates :first_name ,presence: true ,format: {with: /\A[a-zA-Z]+\z/ ,message: "first_name always contains Letter only"}
    # validates :password ,confirmation: true 
    # validates :password_confirmation ,presence: true 

    #  validates :valid_age, numericality: { greater_than: 18 }
    #  validates :age, comparision: { greater_than: 12 }
    # validates :size ,inclusion: { in: ["small","medium"], message: "It is not a valid size"}
    # validates :size ,exclusion: { in: ["small","medium"], message: " not a valid size"}

    # validates :first_name, length: { is: 5 }, allow_blank: true
    # validates :first_name, length: { is: 5 }, allow_nil: true
    # validates :first_name , presence: { message: "first name must be of length 5"} 
    #   validates :first_name, presence: true ,strict: NOTVALIDEXCEPTION
    # validates :first_name , presence: true , if: :size_is_valid
    # def size_is_valid
    #    age <=18
    # end
    # validates :first_name , presence: true , unless: :size_is_valid
    # def size_is_valid
    #    age <=18
    # end

    after_rollback :after_rollbacking
    private
    def after_rollbacking
        puts "-----AFTER ROLLBACKING----"
    end
end
