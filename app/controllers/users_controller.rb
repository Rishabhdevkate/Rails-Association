class UsersController < ApplicationController
  def create
    @user = User.create(user_params)
    if @user.valid?
        @comment = @user.comments.create(comment_params)
      if @comment.valid?
        render json: {user: @user, comment: @comment }
      else
        render json: {errors: @comment.errors.full_messages}
      end  
    else
      render json: {errors: @user.errors.full_messages}
    end
  end
  


  def index
    @users = User.all
    # @last_user = User.last
    # @comment = @last_user.comments
    @comments = @users.collect{|c| c.comments}
    render json: {users: @users, comments: @comments}
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.valid?
        @comment = Comment.find(params[:comment_id])
        @comment.update(comment_params)
      if @comment.valid?
        render json: {user: @user, comment: @comment }
      else
        render json: {errors: @comment.errors.full_messages}
      end  
    else
      render json: {errors: @user.errors.full_messages}
    end

  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      render json: {success: "destroy successfully with comments"}
    else
      render json: {error: "some error"}
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :age)
  end  

  def comment_params
    params.require(:comment).permit(:title, :body)
  end
end
