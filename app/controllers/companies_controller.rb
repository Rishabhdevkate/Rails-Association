class CompaniesController < ApplicationController
    def index
        fetch = Company.all
        render json: fetch
    end
    def show
        found = Company.find(params[:id])
        render json: found
    end

    def create
      company = Company.new(receive_params)
      if company.save
        render json: {data: company, status: 200}
      else
        render json: {error: "It will not saved"}
      end
    end

    def destroy
	  student = Company.find(params[:id])
	  if student.delete
		render json: {msg: "deleted succ"}
	  else
		render json: {error: "errro"}
	  end	

	end

    def update
      upgrd = Company.find(params[:id])
      if upgrd.update(receive_params)
        render json: upgrd
      end
    end
    private
    def receive_params
        params.require(:company).permit(:company_name, :address)
    end 
end
