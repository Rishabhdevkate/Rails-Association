class PersonsController < ApplicationController
    def index
       fetch = Person.all 
       render json: fetch
    end
    def show
        found = Person.find(params[:id])
        render json: found
    end
    def update
        upgrd = Person.find(params[:id])
        
        if upgrd.update(receive_params)
            render json: upgrd
        end
    end
    def delete
        notexists = Person.find(params[:id])
        if notexists.delete
            render json: notexists
        end
    end
  
    def create
       
       persons = Person.new(receive_params)
       if persons.save
        render json:  {data: persons , status: 202 }
       else
        render json: { error: "Not created....."}
       end
    end


    private
    def receive_params
        
        params.require(:person).permit(:name,:age)
    end

end
