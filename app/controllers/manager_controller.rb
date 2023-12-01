class ManagerController < ApplicationController
    def index
        fetch = Manager.all
        render json: fetch
    end

    def show
        found = Manager.find(params[:id])
        render json: found
    end

    def create
      manager = Manager.new(receive_params)
      if manager.save
        render json: {data: manager, status: 200}
      else
        render json: {error: "It will not saved"}
      end
    end

		def department_create
			department = Department.new(department_name: params[:department_name], address: params[:address])
			if department.save
				render json: {data: department}
			else
				render json: {error: department.errors.full_messages}
			end	
		end	

		def destroy
			manager = Manager.find(params[:id])
			if manager.delete
				render json: {msg: "deleted succ"}
			else
				render json: {error: "errro"}
			end	

		end

    def update
        upgrd = Manager.find(params[:id])
        
        if upgrd.update(receive_params)
            render json: upgrd
        end
    end
    private
    def receive_params
        params.require(:manager).permit(:name, :age, :department_id)
    end
end
