class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  before_action :authenticate_user!
  
  def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:success] = "Welcome to the blog! #{@user.username}"
			redirect_to articles_path
		else
			render 'new'
		end
	end

	def update
		@user = User.find(params[:id])
		if  @user.update(user_params)
			flash[:success] = "Account updated successfully"
			redirect_to articles_path
		else
			render 'edit'
		end
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

private
  def user_params
    params.require(:user).permit()
  end

  def set_user
    @user = User.find params[:id]
  end
end
