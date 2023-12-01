class StudentsController < ApplicationController
    def initial
    end
  
    def index
        fetch = Student.all
        render json: fetch
    end
    def show
      found = Student.find_by(id: params[:id])
      found.image.attach(io: File.open('app/admin/image'), filename: 'placeholder.png', content_type: 'image/png')
        if found
          render json: {data: found, status: 200}
        else
          render json: {error: found.errors.full_messages}
        end
    end

    def create
      student = Student.new(receive_params)
      if student.save
        # NotifierMailer.alert_student(student).deliver_now
        render json: {data: student, status: 200}
      else
        render json: {error: "It will not saved"}
      end
    end

		def account_create
			account = Account.new(bank_name: params[:bank_name], student_id: params[:student_id])
			if account.save
				render json: {data: account}
			else
				render json: {error: account.errors.full_messages}
			end	
		end	

		def destroy
			student = Student.find(params[:id])
			if student.delete
				render json: {msg: "deleted succ"}
			else
				render json: {error: "errro"}
			end	

		end

    def update
        upgrd = Person.find(params[:id])
        
        if upgrd.update(receive_params)
            render json: upgrd
        end
    end
    private
    def receive_params
        params.require(:student).permit(:name, :age, :email, :image)
    end
end

# namespace :admin do
#   resources :students
# end
 
# scope module: :admin do 
#   resources :students
# end
# # url-->/students

# scope :admin do 
#   resources :students
# end
# # action-->students#index
