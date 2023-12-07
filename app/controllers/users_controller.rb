class UsersController < ApplicationController
    def hello
    end

    def index
      user = User.all
      render json: {user: user, status: 200}
    end

    def show
      user = User.find_by(user_id: params[:id])
      if user
        render json: {user: user, status: 200}
      else
        render json: { error: "Article not Found...... "}
      end
    end

    def create
      # user = User.new(
      #   first_name: receive_params[:first_name],
      #   last_name: receive_params[:last_name],
      #   deparment: receive_params[:deparment]
      # )
      user = User.new(receive_params)
      if user.save
        render json: user, status: 200
      else
        render json: { error: "ERROR creating......"}
      end
    end

    def update
      user = User.find_by(user_id: params[:id])
      if user
        user.update(first_name: params[:first_name])
        render json: "user record updated successfully"
      else
        render json: { error: "User not find"}

      end
    end

    def destroy
      user = User.find_by(user_id: params[:id])
      if user
        user.destroy
        render json: "user record deleted"
      else
        render json: { error: "User not find"}
      end
    end
    
    private
    def receive_params
      params.require(:user).permit([
          :first_name,
          :last_name,
          :deparment
        ])
    end
end
