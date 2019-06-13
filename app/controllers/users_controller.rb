class UsersController < ApplicationController
	def index
		
	end

	def create
		super
	end

	def new
		render 'devise/registrations/new'
	end

	def edit
		
	end

	def show
		@user = get_user
	end

	def update
		
	end

	def destroy
		
	end

	private

	def get_user
		@user = User.last
	end

	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password)
	end
end